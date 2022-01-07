; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_recv_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, i32, i32, i32, i64, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.fip_header = type { i64, i32, i32, i32 }
%struct.ethhdr = type { i32 }

@FIP_MODE_VN2VN = common dso_local global i64 0, align 8
@fcoe_all_vn2vn = common dso_local global i32 0, align 4
@fcoe_all_p2p = common dso_local global i32 0, align 4
@fcoe_all_enode = common dso_local global i32 0, align 4
@FIP_VER = common dso_local global i64 0, align 8
@FIP_BPW = common dso_local global i32 0, align 4
@FIP_ST_AUTO = common dso_local global i32 0, align 4
@FIP_ST_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Using FIP mode\0A\00", align 1
@FIP_OP_VN2VN = common dso_local global i64 0, align 8
@FIP_OP_VLAN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"fip vlan discovery\0A\00", align 1
@FIP_ST_VNMP_UP = common dso_local global i32 0, align 4
@FIP_ST_VNMP_CLAIM = common dso_local global i32 0, align 4
@FIP_OP_LS = common dso_local global i64 0, align 8
@FIP_OP_DISC = common dso_local global i64 0, align 8
@FIP_SC_ADV = common dso_local global i64 0, align 8
@FIP_OP_CTRL = common dso_local global i64 0, align 8
@FIP_SC_CLR_VLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcoe_ctlr*, %struct.sk_buff*)* @fcoe_ctlr_recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcoe_ctlr_recv_handler(%struct.fcoe_ctlr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fcoe_ctlr*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.fip_header*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i64 @skb_linearize(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %215

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %215

23:                                               ; preds = %16
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %24)
  store %struct.ethhdr* %25, %struct.ethhdr** %7, align 8
  %26 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %27 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FIP_MODE_VN2VN, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %23
  %32 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %33 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %36 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ether_addr_equal(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %31
  %41 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @fcoe_all_vn2vn, align 4
  %45 = call i32 @ether_addr_equal(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %40
  %48 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %49 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @fcoe_all_p2p, align 4
  %52 = call i32 @ether_addr_equal(i32 %50, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %47
  br label %215

55:                                               ; preds = %47, %40, %31
  br label %74

56:                                               ; preds = %23
  %57 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %58 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %61 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ether_addr_equal(i32 %59, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %56
  %66 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %67 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @fcoe_all_enode, align 4
  %70 = call i32 @ether_addr_equal(i32 %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %215

73:                                               ; preds = %65, %56
  br label %74

74:                                               ; preds = %73, %55
  %75 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to %struct.fip_header*
  store %struct.fip_header* %78, %struct.fip_header** %6, align 8
  %79 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %80 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ntohs(i32 %81)
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %10, align 8
  %84 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %85 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %11, align 8
  %87 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %88 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @FIP_VER_DECAPS(i32 %89)
  %91 = load i64, i64* @FIP_VER, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  br label %215

94:                                               ; preds = %74
  %95 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %96 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ntohs(i32 %97)
  %99 = load i32, i32* @FIP_BPW, align 4
  %100 = mul nsw i32 %98, %99
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 24
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = icmp ugt i64 %102, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %215

109:                                              ; preds = %94
  %110 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %111 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %110, i32 0, i32 3
  %112 = call i32 @mutex_lock(i32* %111)
  %113 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %114 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @FIP_ST_AUTO, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %109
  %120 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %121 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %120, i32 0, i32 4
  store i64 0, i64* %121, align 8
  %122 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %123 = load i32, i32* @FIP_ST_ENABLED, align 4
  %124 = call i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr* %122, i32 %123)
  %125 = load i32, i32* @FIP_ST_ENABLED, align 4
  store i32 %125, i32* %8, align 4
  %126 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %127 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %126, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %128

128:                                              ; preds = %119, %109
  %129 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %130 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  %132 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %133 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %132, i32 0, i32 3
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %136 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @FIP_MODE_VN2VN, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %128
  %141 = load i64, i64* %10, align 8
  %142 = load i64, i64* @FIP_OP_VN2VN, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i32 @fcoe_ctlr_vn_recv(%struct.fcoe_ctlr* %145, %struct.sk_buff* %146)
  store i32 %147, i32* %3, align 4
  br label %218

148:                                              ; preds = %140, %128
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i64, i64* %10, align 8
  %153 = load i64, i64* @FIP_OP_VLAN, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %151
  %156 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %157 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %156, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %158 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = call i32 @fcoe_ctlr_vlan_recv(%struct.fcoe_ctlr* %158, %struct.sk_buff* %159)
  store i32 %160, i32* %3, align 4
  br label %218

161:                                              ; preds = %151, %148
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* @FIP_ST_ENABLED, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* @FIP_ST_VNMP_UP, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @FIP_ST_VNMP_CLAIM, align 4
  %172 = icmp ne i32 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %169
  br label %215

174:                                              ; preds = %169, %165, %161
  %175 = load i64, i64* %10, align 8
  %176 = load i64, i64* @FIP_OP_LS, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %181 = call i32 @fcoe_ctlr_recv_els(%struct.fcoe_ctlr* %179, %struct.sk_buff* %180)
  store i32 0, i32* %3, align 4
  br label %218

182:                                              ; preds = %174
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @FIP_ST_ENABLED, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  br label %215

187:                                              ; preds = %182
  %188 = load i64, i64* %10, align 8
  %189 = load i64, i64* @FIP_OP_DISC, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %199

191:                                              ; preds = %187
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @FIP_SC_ADV, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %191
  %196 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %197 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %198 = call i32 @fcoe_ctlr_recv_adv(%struct.fcoe_ctlr* %196, %struct.sk_buff* %197)
  br label %212

199:                                              ; preds = %191, %187
  %200 = load i64, i64* %10, align 8
  %201 = load i64, i64* @FIP_OP_CTRL, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %211

203:                                              ; preds = %199
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* @FIP_SC_CLR_VLINK, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %4, align 8
  %209 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %210 = call i32 @fcoe_ctlr_recv_clr_vlink(%struct.fcoe_ctlr* %208, %struct.sk_buff* %209)
  br label %211

211:                                              ; preds = %207, %203, %199
  br label %212

212:                                              ; preds = %211, %195
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = call i32 @kfree_skb(%struct.sk_buff* %213)
  store i32 0, i32* %3, align 4
  br label %218

215:                                              ; preds = %186, %173, %108, %93, %72, %54, %22, %15
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = call i32 @kfree_skb(%struct.sk_buff* %216)
  store i32 -1, i32* %3, align 4
  br label %218

218:                                              ; preds = %215, %212, %178, %155, %144
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @FIP_VER_DECAPS(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @fcoe_ctlr_set_state(%struct.fcoe_ctlr*, i32) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @fcoe_ctlr_vn_recv(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_vlan_recv(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_recv_els(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_recv_adv(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @fcoe_ctlr_recv_clr_vlink(%struct.fcoe_ctlr*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
