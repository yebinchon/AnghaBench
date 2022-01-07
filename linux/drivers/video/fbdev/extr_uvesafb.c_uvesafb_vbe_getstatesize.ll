; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getstatesize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_vbe_getstatesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_ktask = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.uvesafb_par = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"VBE state buffer size cannot be determined (eax=0x%x, err=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvesafb_ktask*, %struct.uvesafb_par*)* @uvesafb_vbe_getstatesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvesafb_vbe_getstatesize(%struct.uvesafb_ktask* %0, %struct.uvesafb_par* %1) #0 {
  %3 = alloca %struct.uvesafb_ktask*, align 8
  %4 = alloca %struct.uvesafb_par*, align 8
  %5 = alloca i32, align 4
  store %struct.uvesafb_ktask* %0, %struct.uvesafb_ktask** %3, align 8
  store %struct.uvesafb_par* %1, %struct.uvesafb_par** %4, align 8
  %6 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %7 = call i32 @uvesafb_reset(%struct.uvesafb_ktask* %6)
  %8 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %9 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 20228, i32* %11, align 8
  %12 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %13 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i32 15, i32* %15, align 4
  %16 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %17 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %21 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %24 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %29 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, 65535
  %34 = icmp ne i32 %33, 79
  br i1 %34, label %35, label %45

35:                                               ; preds = %27, %2
  %36 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %37 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @pr_warn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41)
  %43 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %44 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  br label %55

45:                                               ; preds = %27
  %46 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %3, align 8
  %47 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 65535
  %52 = mul nsw i32 64, %51
  %53 = load %struct.uvesafb_par*, %struct.uvesafb_par** %4, align 8
  %54 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %45, %35
  ret void
}

declare dso_local i32 @uvesafb_reset(%struct.uvesafb_ktask*) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
