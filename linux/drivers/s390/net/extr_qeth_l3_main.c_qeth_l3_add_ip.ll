; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_add_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.qeth_ipaddr = type { i64, i64, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8 }
%struct.TYPE_5__ = type { i8 }

@QETH_IP_TYPE_RXIP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"addrxip\00", align 1
@QETH_IP_TYPE_VIPA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"addvipa\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"addip\00", align 1
@QETH_PROT_IPV4 = common dso_local global i64 0, align 8
@QETH_IP_TYPE_NORMAL = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Registering IP address %s failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"tkovaddr\00", align 1
@QETH_DISP_ADDR_ADD = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@QETH_DISP_ADDR_DO_NOTHING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, %struct.qeth_ipaddr*)* @qeth_l3_add_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_add_ip(%struct.qeth_card* %0, %struct.qeth_ipaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.qeth_ipaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_ipaddr*, align 8
  %8 = alloca [40 x i8], align 16
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.qeth_ipaddr* %1, %struct.qeth_ipaddr** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %10 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @QETH_IP_TYPE_RXIP, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %16 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %15, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %30

17:                                               ; preds = %2
  %18 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %19 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @QETH_IP_TYPE_VIPA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %25 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %24, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %28 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %27, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  br label %30

30:                                               ; preds = %29, %14
  %31 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %32 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @QETH_PROT_IPV4, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %38 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %39 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %37, i32 4, i8* %41, i32 4)
  br label %57

43:                                               ; preds = %30
  %44 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %45 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %46 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %44, i32 4, i8* %48, i32 8)
  %50 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %51 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %52 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %51, i32 0, i32 7
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds i8, i8* %54, i64 8
  %56 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %50, i32 4, i8* %55, i32 8)
  br label %57

57:                                               ; preds = %43, %36
  %58 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %59 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %60 = call %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card* %58, %struct.qeth_ipaddr* %59)
  store %struct.qeth_ipaddr* %60, %struct.qeth_ipaddr** %7, align 8
  %61 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %62 = icmp ne %struct.qeth_ipaddr* %61, null
  br i1 %62, label %63, label %99

63:                                               ; preds = %57
  %64 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %65 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @QETH_IP_TYPE_NORMAL, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EADDRINUSE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %204

72:                                               ; preds = %63
  %73 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %74 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %75 = call i64 @qeth_l3_addr_match_all(%struct.qeth_ipaddr* %73, %struct.qeth_ipaddr* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %79 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  store i32 0, i32* %3, align 4
  br label %204

82:                                               ; preds = %72
  %83 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %84 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %87 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %86, i32 0, i32 7
  %88 = bitcast %struct.TYPE_7__* %87 to i32*
  %89 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %90 = call i32 @qeth_l3_ipaddr_to_string(i64 %85, i32* %88, i8* %89)
  %91 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %92 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %91, i32 0, i32 2
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %96 = call i32 @dev_warn(i32* %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* @EADDRINUSE, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %204

99:                                               ; preds = %57
  %100 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %101 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i64 %102)
  store %struct.qeth_ipaddr* %103, %struct.qeth_ipaddr** %7, align 8
  %104 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %105 = icmp ne %struct.qeth_ipaddr* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %204

109:                                              ; preds = %99
  %110 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %111 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %5, align 8
  %112 = call i32 @memcpy(%struct.qeth_ipaddr* %110, %struct.qeth_ipaddr* %111, i32 40)
  %113 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %114 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %113, i32 0, i32 2
  store i32 1, i32* %114, align 8
  %115 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %116 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %117 = call i64 @qeth_l3_is_addr_covered_by_ipato(%struct.qeth_card* %115, %struct.qeth_ipaddr* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %109
  %120 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %121 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %120, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %122 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %123 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %122, i32 0, i32 3
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %109
  %125 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %126 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %129 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %128, i32 0, i32 5
  %130 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %131 = call i32 @qeth_l3_ipaddr_hash(%struct.qeth_ipaddr* %130)
  %132 = call i32 @hash_add(i32 %127, i32* %129, i32 %131)
  %133 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %134 = call i32 @qeth_card_hw_is_reachable(%struct.qeth_card* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %124
  %137 = load i32, i32* @QETH_DISP_ADDR_ADD, align 4
  %138 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %139 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %138, i32 0, i32 6
  store i32 %137, i32* %139, align 8
  store i32 0, i32* %3, align 4
  br label %204

140:                                              ; preds = %124
  %141 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %142 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @QETH_PROT_IPV4, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %160

146:                                              ; preds = %140
  %147 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %148 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %147, i32 0, i32 4
  store i32 1, i32* %148, align 8
  %149 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %150 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %149, i32 0, i32 0
  %151 = call i32 @mutex_unlock(i32* %150)
  %152 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %153 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %154 = call i32 @qeth_l3_register_addr_entry(%struct.qeth_card* %152, %struct.qeth_ipaddr* %153)
  store i32 %154, i32* %6, align 4
  %155 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %156 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %155, i32 0, i32 0
  %157 = call i32 @mutex_lock(i32* %156)
  %158 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %159 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %158, i32 0, i32 4
  store i32 0, i32* %159, align 8
  br label %164

160:                                              ; preds = %140
  %161 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %162 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %163 = call i32 @qeth_l3_register_addr_entry(%struct.qeth_card* %161, %struct.qeth_ipaddr* %162)
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %160, %146
  %165 = load i32, i32* %6, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @EADDRINUSE, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %6, align 4
  %174 = load i32, i32* @ENETDOWN, align 4
  %175 = sub nsw i32 0, %174
  %176 = icmp eq i32 %173, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %172, %167, %164
  %178 = load i32, i32* @QETH_DISP_ADDR_DO_NOTHING, align 4
  %179 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %180 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %179, i32 0, i32 6
  store i32 %178, i32* %180, align 8
  %181 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %182 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %194

185:                                              ; preds = %177
  %186 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %187 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %188 = call i32 @qeth_l3_deregister_addr_entry(%struct.qeth_card* %186, %struct.qeth_ipaddr* %187)
  %189 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %190 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %189, i32 0, i32 5
  %191 = call i32 @hash_del(i32* %190)
  %192 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %193 = call i32 @kfree(%struct.qeth_ipaddr* %192)
  br label %194

194:                                              ; preds = %185, %177
  br label %201

195:                                              ; preds = %172
  %196 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %197 = getelementptr inbounds %struct.qeth_ipaddr, %struct.qeth_ipaddr* %196, i32 0, i32 5
  %198 = call i32 @hash_del(i32* %197)
  %199 = load %struct.qeth_ipaddr*, %struct.qeth_ipaddr** %7, align 8
  %200 = call i32 @kfree(%struct.qeth_ipaddr* %199)
  br label %201

201:                                              ; preds = %195, %194
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %202, %136, %106, %82, %77, %69
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_find_addr_by_ip(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i64 @qeth_l3_addr_match_all(%struct.qeth_ipaddr*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_l3_ipaddr_to_string(i64, i32*, i8*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i8*) #1

declare dso_local %struct.qeth_ipaddr* @qeth_l3_get_addr_buffer(i64) #1

declare dso_local i32 @memcpy(%struct.qeth_ipaddr*, %struct.qeth_ipaddr*, i32) #1

declare dso_local i64 @qeth_l3_is_addr_covered_by_ipato(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @hash_add(i32, i32*, i32) #1

declare dso_local i32 @qeth_l3_ipaddr_hash(%struct.qeth_ipaddr*) #1

declare dso_local i32 @qeth_card_hw_is_reachable(%struct.qeth_card*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qeth_l3_register_addr_entry(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qeth_l3_deregister_addr_entry(%struct.qeth_card*, %struct.qeth_ipaddr*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @kfree(%struct.qeth_ipaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
