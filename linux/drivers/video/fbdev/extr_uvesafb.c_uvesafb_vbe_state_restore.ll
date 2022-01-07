; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_state_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_state_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_par = type { i32 }
%struct.uvesafb_ktask = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@TF_BUF_ESBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"VBE state restore call failed (eax=0x%x, err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvesafb_par*, i32*)* @uvesafb_vbe_state_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_vbe_state_restore(%struct.uvesafb_par* %0, i32* %1) #0 {
  %3 = alloca %struct.uvesafb_par*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.uvesafb_ktask*, align 8
  %6 = alloca i32, align 4
  store %struct.uvesafb_par* %0, %struct.uvesafb_par** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %64

10:                                               ; preds = %2
  %11 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %11, %struct.uvesafb_ktask** %5, align 8
  %12 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %13 = icmp ne %struct.uvesafb_ktask* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  br label %64

15:                                               ; preds = %10
  %16 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %17 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32 20228, i32* %19, align 8
  %20 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %21 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 15, i32* %23, align 4
  %24 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %25 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32 2, i32* %27, align 8
  %28 = load %struct.uvesafb_par*, %struct.uvesafb_par** %3, align 8
  %29 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %32 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* @TF_BUF_ESBX, align 4
  %35 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %36 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %40 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %42 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %15
  %46 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %47 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, 65535
  %52 = icmp ne i32 %51, 79
  br i1 %52, label %53, label %61

53:                                               ; preds = %45, %15
  %54 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %55 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %53, %45
  %62 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %5, align 8
  %63 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %62)
  br label %64

64:                                               ; preds = %61, %14, %9
  ret void
}

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
