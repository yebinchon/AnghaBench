; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_enable_aspm_back_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_enable_aspm_back_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@REG_BACKDOOR_DBI_DATA = common dso_local global i64 0, align 8
@REG_BACKDOOR_DBI_RDATA = common dso_local global i32 0, align 4
@REG_BACKDOOR_DBI_WDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ee_enable_aspm_back_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_enable_aspm_back_door(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %14 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %15 = call i32 @rtl_write_word(%struct.rtl_priv* %13, i64 %14, i32 120)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %18 = add nsw i64 %17, 2
  %19 = call i32 @rtl_write_byte(%struct.rtl_priv* %16, i64 %18, i32 2)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %22 = add nsw i64 %21, 2
  %23 = call i64 @rtl_read_byte(%struct.rtl_priv* %20, i64 %22)
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %32, %1
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 20
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %40

32:                                               ; preds = %30
  %33 = call i32 @udelay(i32 10)
  %34 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %35 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %36 = add nsw i64 %35, 2
  %37 = call i64 @rtl_read_byte(%struct.rtl_priv* %34, i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %24

40:                                               ; preds = %30
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 0, %41
  br i1 %42, label %43, label %88

43:                                               ; preds = %40
  %44 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %45 = load i32, i32* @REG_BACKDOOR_DBI_RDATA, align 4
  %46 = call i32 @rtl_read_dword(%struct.rtl_priv* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 65280
  %49 = icmp ne i32 %48, 8192
  br i1 %49, label %50, label %87

50:                                               ; preds = %43
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, -65281
  store i32 %52, i32* %5, align 4
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = load i32, i32* @REG_BACKDOOR_DBI_WDATA, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @BIT(i32 13)
  %57 = or i32 %55, %56
  %58 = call i32 @rtl_write_dword(%struct.rtl_priv* %53, i32 %54, i32 %57)
  %59 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %60 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %61 = call i32 @rtl_write_word(%struct.rtl_priv* %59, i64 %60, i32 61560)
  %62 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %63 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %64 = add nsw i64 %63, 2
  %65 = call i32 @rtl_write_byte(%struct.rtl_priv* %62, i64 %64, i32 1)
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %67 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %68 = add nsw i64 %67, 2
  %69 = call i64 @rtl_read_byte(%struct.rtl_priv* %66, i64 %68)
  store i64 %69, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %78, %50
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 20
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ]
  br i1 %77, label %78, label %86

78:                                               ; preds = %76
  %79 = call i32 @udelay(i32 10)
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %81 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %82 = add nsw i64 %81, 2
  %83 = call i64 @rtl_read_byte(%struct.rtl_priv* %80, i64 %82)
  store i64 %83, i64* %7, align 8
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %70

86:                                               ; preds = %76
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %40
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %91 = call i32 @rtl_write_word(%struct.rtl_priv* %89, i64 %90, i32 1804)
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %93 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %94 = add nsw i64 %93, 2
  %95 = call i32 @rtl_write_byte(%struct.rtl_priv* %92, i64 %94, i32 2)
  %96 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %97 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %98 = add nsw i64 %97, 2
  %99 = call i64 @rtl_read_byte(%struct.rtl_priv* %96, i64 %98)
  store i64 %99, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %108, %88
  %101 = load i64, i64* %7, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %104, 20
  br label %106

106:                                              ; preds = %103, %100
  %107 = phi i1 [ false, %100 ], [ %105, %103 ]
  br i1 %107, label %108, label %116

108:                                              ; preds = %106
  %109 = call i32 @udelay(i32 10)
  %110 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %111 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %112 = add nsw i64 %111, 2
  %113 = call i64 @rtl_read_byte(%struct.rtl_priv* %110, i64 %112)
  store i64 %113, i64* %7, align 8
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %100

116:                                              ; preds = %106
  %117 = load i64, i64* %7, align 8
  %118 = icmp eq i64 0, %117
  br i1 %118, label %119, label %136

119:                                              ; preds = %116
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = load i32, i32* @REG_BACKDOOR_DBI_RDATA, align 4
  %122 = call i32 @rtl_read_dword(%struct.rtl_priv* %120, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %124 = load i32, i32* @REG_BACKDOOR_DBI_WDATA, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @BIT(i32 31)
  %127 = or i32 %125, %126
  %128 = call i32 @rtl_write_dword(%struct.rtl_priv* %123, i32 %124, i32 %127)
  %129 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %130 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %131 = call i32 @rtl_write_word(%struct.rtl_priv* %129, i64 %130, i32 63244)
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %133 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %134 = add nsw i64 %133, 2
  %135 = call i32 @rtl_write_byte(%struct.rtl_priv* %132, i64 %134, i32 1)
  br label %136

136:                                              ; preds = %119, %116
  %137 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %138 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %139 = add nsw i64 %138, 2
  %140 = call i64 @rtl_read_byte(%struct.rtl_priv* %137, i64 %139)
  store i64 %140, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %149, %136
  %142 = load i64, i64* %7, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* %6, align 4
  %146 = icmp slt i32 %145, 20
  br label %147

147:                                              ; preds = %144, %141
  %148 = phi i1 [ false, %141 ], [ %146, %144 ]
  br i1 %148, label %149, label %157

149:                                              ; preds = %147
  %150 = call i32 @udelay(i32 10)
  %151 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %152 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %153 = add nsw i64 %152, 2
  %154 = call i64 @rtl_read_byte(%struct.rtl_priv* %151, i64 %153)
  store i64 %154, i64* %7, align 8
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %141

157:                                              ; preds = %147
  %158 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %159 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %160 = call i32 @rtl_write_word(%struct.rtl_priv* %158, i64 %159, i32 1816)
  %161 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %162 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %163 = add nsw i64 %162, 2
  %164 = call i32 @rtl_write_byte(%struct.rtl_priv* %161, i64 %163, i32 2)
  %165 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %166 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %167 = add nsw i64 %166, 2
  %168 = call i64 @rtl_read_byte(%struct.rtl_priv* %165, i64 %167)
  store i64 %168, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %177, %157
  %170 = load i64, i64* %7, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %6, align 4
  %174 = icmp slt i32 %173, 20
  br label %175

175:                                              ; preds = %172, %169
  %176 = phi i1 [ false, %169 ], [ %174, %172 ]
  br i1 %176, label %177, label %185

177:                                              ; preds = %175
  %178 = call i32 @udelay(i32 10)
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %180 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %181 = add nsw i64 %180, 2
  %182 = call i64 @rtl_read_byte(%struct.rtl_priv* %179, i64 %181)
  store i64 %182, i64* %7, align 8
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %6, align 4
  br label %169

185:                                              ; preds = %175
  %186 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %187 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %185
  %191 = load i64, i64* %7, align 8
  %192 = icmp eq i64 0, %191
  br i1 %192, label %193, label %212

193:                                              ; preds = %190, %185
  %194 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %195 = load i32, i32* @REG_BACKDOOR_DBI_RDATA, align 4
  %196 = call i32 @rtl_read_dword(%struct.rtl_priv* %194, i32 %195)
  store i32 %196, i32* %5, align 4
  %197 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %198 = load i32, i32* @REG_BACKDOOR_DBI_WDATA, align 4
  %199 = load i32, i32* %5, align 4
  %200 = call i32 @BIT(i32 11)
  %201 = or i32 %199, %200
  %202 = call i32 @BIT(i32 12)
  %203 = or i32 %201, %202
  %204 = call i32 @rtl_write_dword(%struct.rtl_priv* %197, i32 %198, i32 %203)
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %206 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %207 = call i32 @rtl_write_word(%struct.rtl_priv* %205, i64 %206, i32 63256)
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %209 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %210 = add nsw i64 %209, 2
  %211 = call i32 @rtl_write_byte(%struct.rtl_priv* %208, i64 %210, i32 1)
  br label %212

212:                                              ; preds = %193, %190
  %213 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %214 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %215 = add nsw i64 %214, 2
  %216 = call i64 @rtl_read_byte(%struct.rtl_priv* %213, i64 %215)
  store i64 %216, i64* %7, align 8
  store i32 0, i32* %6, align 4
  br label %217

217:                                              ; preds = %225, %212
  %218 = load i64, i64* %7, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* %6, align 4
  %222 = icmp slt i32 %221, 20
  br label %223

223:                                              ; preds = %220, %217
  %224 = phi i1 [ false, %217 ], [ %222, %220 ]
  br i1 %224, label %225, label %233

225:                                              ; preds = %223
  %226 = call i32 @udelay(i32 10)
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %228 = load i64, i64* @REG_BACKDOOR_DBI_DATA, align 8
  %229 = add nsw i64 %228, 2
  %230 = call i64 @rtl_read_byte(%struct.rtl_priv* %227, i64 %229)
  store i64 %230, i64* %7, align 8
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %217

233:                                              ; preds = %223
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i64, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i64, i32) #1

declare dso_local i64 @rtl_read_byte(%struct.rtl_priv*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
