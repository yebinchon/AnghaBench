; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_debugfs_status_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_ideapad-laptop.c_debugfs_status_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.ideapad_private* }
%struct.ideapad_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VPCCMD_R_BL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Backlight max:\09%lu\0A\00", align 1
@VPCCMD_R_BL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Backlight now:\09%lu\0A\00", align 1
@VPCCMD_R_BL_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"BL power value:\09%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"=====================\0A\00", align 1
@VPCCMD_R_RF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Radio status:\09%s(%lu)\0A\00", align 1
@VPCCMD_R_WIFI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [22 x i8] c"Wifi status:\09%s(%lu)\0A\00", align 1
@VPCCMD_R_BT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"BT status:\09%s(%lu)\0A\00", align 1
@VPCCMD_R_3G = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"3G status:\09%s(%lu)\0A\00", align 1
@VPCCMD_R_TOUCHPAD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [25 x i8] c"Touchpad status:%s(%lu)\0A\00", align 1
@VPCCMD_R_CAMERA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [24 x i8] c"Camera status:\09%s(%lu)\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Conservation mode:\09%s(%lu)\0A\00", align 1
@BM_CONSERVATION_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @debugfs_status_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debugfs_status_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ideapad_private*, align 8
  %7 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.ideapad_private*, %struct.ideapad_private** %9, align 8
  store %struct.ideapad_private* %10, %struct.ideapad_private** %6, align 8
  %11 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %12 = icmp ne %struct.ideapad_private* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %184

16:                                               ; preds = %2
  %17 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %18 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VPCCMD_R_BL_MAX, align 4
  %23 = call i32 @read_ec_data(i32 %21, i32 %22, i64* %7)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %31 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VPCCMD_R_BL, align 4
  %36 = call i32 @read_ec_data(i32 %34, i32 %35, i64* %7)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %29
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %44 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VPCCMD_R_BL_POWER, align 4
  %49 = call i32 @read_ec_data(i32 %47, i32 %48, i64* %7)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %42
  %52 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %51, %42
  %59 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %60 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %61 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %62 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @VPCCMD_R_RF, align 4
  %67 = call i32 @read_ec_data(i32 %65, i32 %66, i64* %7)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %58
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp ne i64 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %75 = load i64, i64* %7, align 8
  %76 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %74, i64 %75)
  br label %77

77:                                               ; preds = %69, %58
  %78 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %79 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @VPCCMD_R_WIFI, align 4
  %84 = call i32 @read_ec_data(i32 %82, i32 %83, i64* %7)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %77
  %87 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %88 = load i64, i64* %7, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %92 = load i64, i64* %7, align 8
  %93 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %87, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i8* %91, i64 %92)
  br label %94

94:                                               ; preds = %86, %77
  %95 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %96 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @VPCCMD_R_BT, align 4
  %101 = call i32 @read_ec_data(i32 %99, i32 %100, i64* %7)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %94
  %104 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %109 = load i64, i64* %7, align 8
  %110 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* %108, i64 %109)
  br label %111

111:                                              ; preds = %103, %94
  %112 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %113 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @VPCCMD_R_3G, align 4
  %118 = call i32 @read_ec_data(i32 %116, i32 %117, i64* %7)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %128, label %120

120:                                              ; preds = %111
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = load i64, i64* %7, align 8
  %123 = icmp ne i64 %122, 0
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %126 = load i64, i64* %7, align 8
  %127 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %125, i64 %126)
  br label %128

128:                                              ; preds = %120, %111
  %129 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %130 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %132 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @VPCCMD_R_TOUCHPAD, align 4
  %137 = call i32 @read_ec_data(i32 %135, i32 %136, i64* %7)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %147, label %139

139:                                              ; preds = %128
  %140 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %141 = load i64, i64* %7, align 8
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %145 = load i64, i64* %7, align 8
  %146 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i8* %144, i64 %145)
  br label %147

147:                                              ; preds = %139, %128
  %148 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %149 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %148, i32 0, i32 0
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @VPCCMD_R_CAMERA, align 4
  %154 = call i32 @read_ec_data(i32 %152, i32 %153, i64* %7)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %164, label %156

156:                                              ; preds = %147
  %157 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %158 = load i64, i64* %7, align 8
  %159 = icmp ne i64 %158, 0
  %160 = zext i1 %159 to i64
  %161 = select i1 %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %162 = load i64, i64* %7, align 8
  %163 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i8* %161, i64 %162)
  br label %164

164:                                              ; preds = %156, %147
  %165 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %166 = call i32 @seq_puts(%struct.seq_file* %165, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %167 = load %struct.ideapad_private*, %struct.ideapad_private** %6, align 8
  %168 = getelementptr inbounds %struct.ideapad_private, %struct.ideapad_private* %167, i32 0, i32 0
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @method_gbmd(i32 %171, i64* %7)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %183, label %174

174:                                              ; preds = %164
  %175 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %176 = load i32, i32* @BM_CONSERVATION_BIT, align 4
  %177 = call i64 @test_bit(i32 %176, i64* %7)
  %178 = icmp ne i64 %177, 0
  %179 = zext i1 %178 to i64
  %180 = select i1 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %181 = load i64, i64* %7, align 8
  %182 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0), i8* %180, i64 %181)
  br label %183

183:                                              ; preds = %174, %164
  store i32 0, i32* %3, align 4
  br label %184

184:                                              ; preds = %183, %13
  %185 = load i32, i32* %3, align 4
  ret i32 %185
}

declare dso_local i32 @read_ec_data(i32, i32, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @method_gbmd(i32, i64*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
