; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_drd.c_cdns3_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3 = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Set controller to OTG mode\0A\00", align 1
@CDNS3_CONTROLLER_V1 = common dso_local global i32 0, align 4
@OVERRIDE_IDPULLUP = common dso_local global i32 0, align 4
@OVERRIDE_IDPULLUP_V0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unsupported mode of operation %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns3_set_mode(%struct.cdns3* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cdns3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cdns3* %0, %struct.cdns3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %53 [
    i32 128, label %9
    i32 130, label %10
    i32 129, label %11
  ]

9:                                                ; preds = %2
  br label %61

10:                                               ; preds = %2
  br label %61

11:                                               ; preds = %2
  %12 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %13 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %17 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CDNS3_CONTROLLER_V1, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %11
  %22 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %23 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = call i32 @readl(i32* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @OVERRIDE_IDPULLUP, align 4
  %28 = load i32, i32* %7, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %32 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %31, i32 0, i32 2
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @writel(i32 %30, i32* %34)
  br label %51

36:                                               ; preds = %11
  %37 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %38 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @readl(i32* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @OVERRIDE_IDPULLUP_V0, align 4
  %43 = load i32, i32* %7, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %47 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @writel(i32 %45, i32* %49)
  br label %51

51:                                               ; preds = %36, %21
  %52 = call i32 @usleep_range(i32 50000, i32 60000)
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.cdns3*, %struct.cdns3** %4, align 8
  %55 = getelementptr inbounds %struct.cdns3, %struct.cdns3* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %51, %10, %9
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %53
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
