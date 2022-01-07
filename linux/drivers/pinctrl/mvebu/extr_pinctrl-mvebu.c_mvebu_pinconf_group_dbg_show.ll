; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinconf_group_dbg_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-mvebu.c_mvebu_pinconf_group_dbg_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.seq_file = type { i32 }
%struct.mvebu_pinctrl = type { i32, %struct.mvebu_pinctrl_group* }
%struct.mvebu_pinctrl_group = type { i32, %struct.mvebu_mpp_ctrl_setting* }
%struct.mvebu_mpp_ctrl_setting = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"current: %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@MVEBU_SETTING_GPO = common dso_local global i32 0, align 4
@MVEBU_SETTING_GPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"current: UNKNOWN\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c", available = [\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pinctrl_dev*, %struct.seq_file*, i32)* @mvebu_pinconf_group_dbg_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_pinconf_group_dbg_show(%struct.pinctrl_dev* %0, %struct.seq_file* %1, i32 %2) #0 {
  %4 = alloca %struct.pinctrl_dev*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvebu_pinctrl*, align 8
  %8 = alloca %struct.mvebu_pinctrl_group*, align 8
  %9 = alloca %struct.mvebu_mpp_ctrl_setting*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %13 = call %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %12)
  store %struct.mvebu_pinctrl* %13, %struct.mvebu_pinctrl** %7, align 8
  %14 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %7, align 8
  %15 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %14, i32 0, i32 1
  %16 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %16, i64 %18
  store %struct.mvebu_pinctrl_group* %19, %struct.mvebu_pinctrl_group** %8, align 8
  %20 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i64 @mvebu_pinconf_group_get(%struct.pinctrl_dev* %20, i32 %21, i64* %10)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %217

25:                                               ; preds = %3
  %26 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %7, align 8
  %27 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_setting_by_val(%struct.mvebu_pinctrl* %26, %struct.mvebu_pinctrl_group* %27, i64 %28)
  store %struct.mvebu_mpp_ctrl_setting* %29, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %30 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %31 = icmp ne %struct.mvebu_mpp_ctrl_setting* %30, null
  br i1 %31, label %32, label %83

32:                                               ; preds = %25
  %33 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %34 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %35 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %39 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %44 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %45 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %42, %32
  %49 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %50 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MVEBU_SETTING_GPO, align 4
  %53 = load i32, i32* @MVEBU_SETTING_GPI, align 4
  %54 = or i32 %52, %53
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %48
  %58 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %59 = call i32 @seq_putc(%struct.seq_file* %58, i8 signext 40)
  %60 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %61 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MVEBU_SETTING_GPI, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %57
  %67 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %68 = call i32 @seq_putc(%struct.seq_file* %67, i8 signext 105)
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %71 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @MVEBU_SETTING_GPO, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %78 = call i32 @seq_putc(%struct.seq_file* %77, i8 signext 111)
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %81 = call i32 @seq_putc(%struct.seq_file* %80, i8 signext 41)
  br label %82

82:                                               ; preds = %79, %48
  br label %86

83:                                               ; preds = %25
  %84 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %85 = call i32 @seq_puts(%struct.seq_file* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %82
  %87 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %88 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %217

91:                                               ; preds = %86
  %92 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %93 = call i32 @seq_puts(%struct.seq_file* %92, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %211, %91
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %97 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %214

100:                                              ; preds = %94
  %101 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %9, align 8
  %102 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %103 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %102, i32 0, i32 1
  %104 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %103, align 8
  %105 = load i32, i32* %11, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %104, i64 %106
  %108 = icmp eq %struct.mvebu_mpp_ctrl_setting* %101, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %100
  br label %211

110:                                              ; preds = %100
  %111 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %7, align 8
  %112 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %130

115:                                              ; preds = %110
  %116 = load %struct.mvebu_pinctrl*, %struct.mvebu_pinctrl** %7, align 8
  %117 = getelementptr inbounds %struct.mvebu_pinctrl, %struct.mvebu_pinctrl* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %120 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %119, i32 0, i32 1
  %121 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %121, i64 %123
  %125 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %118, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %115
  br label %211

130:                                              ; preds = %115, %110
  %131 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %132 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %133 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %132, i32 0, i32 1
  %134 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %133, align 8
  %135 = load i32, i32* %11, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %134, i64 %136
  %138 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i64 %139)
  %141 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %142 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %141, i32 0, i32 1
  %143 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %143, i64 %145
  %147 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %161

150:                                              ; preds = %130
  %151 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %152 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %153 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %152, i32 0, i32 1
  %154 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %154, i64 %156
  %158 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @seq_printf(%struct.seq_file* %151, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %150, %130
  %162 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %163 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %162, i32 0, i32 1
  %164 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %163, align 8
  %165 = load i32, i32* %11, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %164, i64 %166
  %168 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @MVEBU_SETTING_GPO, align 4
  %171 = load i32, i32* @MVEBU_SETTING_GPI, align 4
  %172 = or i32 %170, %171
  %173 = and i32 %169, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %210

175:                                              ; preds = %161
  %176 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %177 = call i32 @seq_putc(%struct.seq_file* %176, i8 signext 40)
  %178 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %179 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %178, i32 0, i32 1
  %180 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %179, align 8
  %181 = load i32, i32* %11, align 4
  %182 = zext i32 %181 to i64
  %183 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %180, i64 %182
  %184 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @MVEBU_SETTING_GPI, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %175
  %190 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %191 = call i32 @seq_putc(%struct.seq_file* %190, i8 signext 105)
  br label %192

192:                                              ; preds = %189, %175
  %193 = load %struct.mvebu_pinctrl_group*, %struct.mvebu_pinctrl_group** %8, align 8
  %194 = getelementptr inbounds %struct.mvebu_pinctrl_group, %struct.mvebu_pinctrl_group* %193, i32 0, i32 1
  %195 = load %struct.mvebu_mpp_ctrl_setting*, %struct.mvebu_mpp_ctrl_setting** %194, align 8
  %196 = load i32, i32* %11, align 4
  %197 = zext i32 %196 to i64
  %198 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %195, i64 %197
  %199 = getelementptr inbounds %struct.mvebu_mpp_ctrl_setting, %struct.mvebu_mpp_ctrl_setting* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @MVEBU_SETTING_GPO, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %192
  %205 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %206 = call i32 @seq_putc(%struct.seq_file* %205, i8 signext 111)
  br label %207

207:                                              ; preds = %204, %192
  %208 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %209 = call i32 @seq_putc(%struct.seq_file* %208, i8 signext 41)
  br label %210

210:                                              ; preds = %207, %161
  br label %211

211:                                              ; preds = %210, %129, %109
  %212 = load i32, i32* %11, align 4
  %213 = add i32 %212, 1
  store i32 %213, i32* %11, align 4
  br label %94

214:                                              ; preds = %94
  %215 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %216 = call i32 @seq_puts(%struct.seq_file* %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %217

217:                                              ; preds = %24, %214, %86
  ret void
}

declare dso_local %struct.mvebu_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local i64 @mvebu_pinconf_group_get(%struct.pinctrl_dev*, i32, i64*) #1

declare dso_local %struct.mvebu_mpp_ctrl_setting* @mvebu_pinctrl_find_setting_by_val(%struct.mvebu_pinctrl*, %struct.mvebu_pinctrl_group*, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
