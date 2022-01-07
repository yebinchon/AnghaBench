; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___sony_nc_gfx_switch_status_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c___sony_nc_gfx_switch_status_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@gfxs_ctl = common dso_local global %struct.TYPE_2__* null, align 8
@EIO = common dso_local global i32 0, align 4
@SPEED = common dso_local global i32 0, align 4
@STAMINA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"GFX Status: 0x%x\0A\00", align 1
@AUTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__sony_nc_gfx_switch_status_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__sony_nc_gfx_switch_status_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gfxs_ctl, align 8
  %4 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gfxs_ctl, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 347
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 256
  %12 = call i64 @sony_call_snc_handle(i32 %5, i32 %11, i32* %2)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %64

17:                                               ; preds = %0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @gfxs_ctl, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %61 [
    i32 326, label %21
    i32 347, label %31
    i32 296, label %41
  ]

21:                                               ; preds = %17
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 1
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SPEED, align 4
  br label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @STAMINA, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %1, align 4
  br label %64

31:                                               ; preds = %17
  %32 = load i32, i32* %2, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @STAMINA, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @SPEED, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  store i32 %40, i32* %1, align 4
  br label %64

41:                                               ; preds = %17
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, 128
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @AUTO, align 4
  br label %59

49:                                               ; preds = %41
  %50 = load i32, i32* %2, align 4
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @STAMINA, align 4
  br label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @SPEED, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  br label %59

59:                                               ; preds = %57, %47
  %60 = phi i32 [ %48, %47 ], [ %58, %57 ]
  store i32 %60, i32* %1, align 4
  br label %64

61:                                               ; preds = %17
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %1, align 4
  br label %64

64:                                               ; preds = %61, %59, %39, %29, %14
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i64 @sony_call_snc_handle(i32, i32, i32*) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
