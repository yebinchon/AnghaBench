; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_blank_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/olpc_dcon/extr_olpc_dcon.c_dcon_blank_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcon_priv = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FB_BLANK_POWERDOWN = common dso_local global i32 0, align 4
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"couldn't %sblank framebuffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dcon_priv*, i32)* @dcon_blank_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcon_blank_fb(%struct.dcon_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dcon_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dcon_priv* %0, %struct.dcon_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = call i32 (...) @console_lock()
  %8 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %9 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @lock_fb_info(i32 %10)
  %12 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %13 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %15 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @FB_BLANK_POWERDOWN, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call i32 @fb_blank(i32 %16, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %27 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %29 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @unlock_fb_info(i32 %30)
  %32 = call i32 (...) @console_unlock()
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %23
  %36 = load %struct.dcon_priv*, %struct.dcon_priv** %4, align 8
  %37 = getelementptr inbounds %struct.dcon_priv, %struct.dcon_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %44 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 0, i32* %3, align 4
  br label %46

45:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %35
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @console_lock(...) #1

declare dso_local i32 @lock_fb_info(i32) #1

declare dso_local i32 @fb_blank(i32, i32) #1

declare dso_local i32 @unlock_fb_info(i32) #1

declare dso_local i32 @console_unlock(...) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
