; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_rpipe_get_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_wa-rpipe.c_rpipe_get_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wa_rpipe = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.wahc = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't get descriptor for rpipe %u: %d\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wa_rpipe**, %struct.wahc*, i32, i32)* @rpipe_get_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpipe_get_idle(%struct.wa_rpipe** %0, %struct.wahc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wa_rpipe**, align 8
  %7 = alloca %struct.wahc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wa_rpipe*, align 8
  %13 = alloca %struct.device*, align 8
  store %struct.wa_rpipe** %0, %struct.wa_rpipe*** %6, align 8
  store %struct.wahc* %1, %struct.wahc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.wahc*, %struct.wahc** %7, align 8
  %15 = getelementptr inbounds %struct.wahc, %struct.wahc* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %13, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.wa_rpipe* @kzalloc(i32 8, i32 %18)
  store %struct.wa_rpipe* %19, %struct.wa_rpipe** %12, align 8
  %20 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %21 = icmp eq %struct.wa_rpipe* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %92

25:                                               ; preds = %4
  %26 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %27 = call i32 @rpipe_init(%struct.wa_rpipe* %26)
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %71, %25
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.wahc*, %struct.wahc** %7, align 8
  %31 = getelementptr inbounds %struct.wahc, %struct.wahc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %74

34:                                               ; preds = %28
  %35 = load %struct.wahc*, %struct.wahc** %7, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @rpipe_get_idx(%struct.wahc* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.wahc*, %struct.wahc** %7, align 8
  %40 = getelementptr inbounds %struct.wahc, %struct.wahc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %74

44:                                               ; preds = %34
  %45 = load %struct.wahc*, %struct.wahc** %7, align 8
  %46 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %47 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %46, i32 0, i32 1
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @__rpipe_get_descr(%struct.wahc* %45, %struct.TYPE_4__* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %44
  %53 = load %struct.device*, %struct.device** %13, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  br label %67

57:                                               ; preds = %44
  %58 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %59 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %80

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %52
  %68 = load %struct.wahc*, %struct.wahc** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @rpipe_put_idx(%struct.wahc* %68, i32 %69)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %28

74:                                               ; preds = %43, %28
  %75 = load %struct.wa_rpipe**, %struct.wa_rpipe*** %6, align 8
  store %struct.wa_rpipe* null, %struct.wa_rpipe** %75, align 8
  %76 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %77 = call i32 @kfree(%struct.wa_rpipe* %76)
  %78 = load i32, i32* @ENXIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %92

80:                                               ; preds = %65
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.wahc*, %struct.wahc** %7, align 8
  %83 = getelementptr inbounds %struct.wahc, %struct.wahc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @set_bit(i32 %81, i32 %84)
  %86 = load %struct.wahc*, %struct.wahc** %7, align 8
  %87 = call i32 @wa_get(%struct.wahc* %86)
  %88 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %89 = getelementptr inbounds %struct.wa_rpipe, %struct.wa_rpipe* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.wa_rpipe*, %struct.wa_rpipe** %12, align 8
  %91 = load %struct.wa_rpipe**, %struct.wa_rpipe*** %6, align 8
  store %struct.wa_rpipe* %90, %struct.wa_rpipe** %91, align 8
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %80, %74, %22
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local %struct.wa_rpipe* @kzalloc(i32, i32) #1

declare dso_local i32 @rpipe_init(%struct.wa_rpipe*) #1

declare dso_local i32 @rpipe_get_idx(%struct.wahc*, i32) #1

declare dso_local i32 @__rpipe_get_descr(%struct.wahc*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @rpipe_put_idx(%struct.wahc*, i32) #1

declare dso_local i32 @kfree(%struct.wa_rpipe*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @wa_get(%struct.wahc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
