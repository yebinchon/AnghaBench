; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_register_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc-compat.c_omap_dispc_register_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.omap_dispc_isr_data* }
%struct.omap_dispc_isr_data = type { i8*, i64, i32* }

@EINVAL = common dso_local global i32 0, align 4
@dispc_compat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPC_MAX_NR_ISRS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_dispc_register_isr(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.omap_dispc_isr_data*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %95

17:                                               ; preds = %3
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @spin_lock_irqsave(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), i64 %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %50, %17
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @DISPC_MAX_NR_ISRS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 1), align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %25, i64 %27
  store %struct.omap_dispc_isr_data* %28, %struct.omap_dispc_isr_data** %11, align 8
  %29 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %30 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = icmp eq i32* %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %24
  %35 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %36 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp eq i8* %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %42 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %91

49:                                               ; preds = %40, %34, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %20

53:                                               ; preds = %20
  store %struct.omap_dispc_isr_data* null, %struct.omap_dispc_isr_data** %11, align 8
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %80, %53
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @DISPC_MAX_NR_ISRS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 1), align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %61, i64 %63
  store %struct.omap_dispc_isr_data* %64, %struct.omap_dispc_isr_data** %11, align 8
  %65 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %66 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %80

70:                                               ; preds = %60
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %73 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %72, i32 0, i32 2
  store i32* %71, i32** %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %76 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %75, i32 0, i32 0
  store i8* %74, i8** %76, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.omap_dispc_isr_data*, %struct.omap_dispc_isr_data** %11, align 8
  %79 = getelementptr inbounds %struct.omap_dispc_isr_data, %struct.omap_dispc_isr_data* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  store i32 0, i32* %9, align 4
  br label %83

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %56

83:                                               ; preds = %70, %56
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  br label %91

87:                                               ; preds = %83
  %88 = call i32 (...) @_omap_dispc_set_irqs()
  %89 = load i64, i64* %10, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), i64 %89)
  store i32 0, i32* %4, align 4
  br label %95

91:                                               ; preds = %86, %46
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc_compat, i32 0, i32 0), i64 %92)
  %94 = load i32, i32* %9, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %91, %87, %14
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @_omap_dispc_set_irqs(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
