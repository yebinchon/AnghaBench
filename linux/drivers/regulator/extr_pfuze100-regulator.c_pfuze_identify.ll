; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze_identify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pfuze100-regulator.c_pfuze_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfuze_chip = type { i32, i32, i32 }

@PFUZE100_DEVICEID = common dso_local global i32 0, align 4
@PFUZE100 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Assuming misprogrammed ID=0x8\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Illegal ID: %x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@PFUZE100_REVID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Full layer: %x, Metal layer: %x\0A\00", align 1
@PFUZE100_FABID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"FAB: %x, FIN: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfuze_chip*)* @pfuze_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfuze_identify(%struct.pfuze_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pfuze_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pfuze_chip* %0, %struct.pfuze_chip** %3, align 8
  %6 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %7 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PFUZE100_DEVICEID, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %4)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %99

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 15
  %18 = icmp eq i32 %17, 8
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %21 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PFUZE100, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %27 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @dev_info(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %60

30:                                               ; preds = %19, %15
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, 15
  %33 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %34 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %32, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, 240
  %40 = lshr i32 %39, 4
  %41 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %42 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %59

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %48 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %46, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %53 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %99

59:                                               ; preds = %45, %37, %30
  br label %60

60:                                               ; preds = %59, %25
  %61 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %62 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @PFUZE100_REVID, align 4
  %65 = call i32 @regmap_read(i32 %63, i32 %64, i32* %4)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %99

70:                                               ; preds = %60
  %71 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %72 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 240
  %76 = lshr i32 %75, 4
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 15
  %79 = call i32 (i32, i8*, ...) @dev_info(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %81 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @PFUZE100_FABID, align 4
  %84 = call i32 @regmap_read(i32 %82, i32 %83, i32* %4)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i32, i32* %5, align 4
  store i32 %88, i32* %2, align 4
  br label %99

89:                                               ; preds = %70
  %90 = load %struct.pfuze_chip*, %struct.pfuze_chip** %3, align 8
  %91 = getelementptr inbounds %struct.pfuze_chip, %struct.pfuze_chip* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 12
  %95 = lshr i32 %94, 2
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, 3
  %98 = call i32 (i32, i8*, ...) @dev_info(i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %95, i32 %97)
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %89, %87, %68, %51, %13
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, ...) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
