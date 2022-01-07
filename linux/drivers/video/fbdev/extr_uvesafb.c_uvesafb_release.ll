; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.uvesafb_par* }
%struct.uvesafb_par = type { i32, i32 }
%struct.uvesafb_ktask = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i32)* @uvesafb_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_release(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvesafb_ktask*, align 8
  %7 = alloca %struct.uvesafb_par*, align 8
  %8 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uvesafb_ktask* null, %struct.uvesafb_ktask** %6, align 8
  %9 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %10 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %9, i32 0, i32 0
  %11 = load %struct.uvesafb_par*, %struct.uvesafb_par** %10, align 8
  store %struct.uvesafb_par* %11, %struct.uvesafb_par** %7, align 8
  %12 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %13 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %12, i32 0, i32 0
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %47

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %41

24:                                               ; preds = %20
  %25 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %25, %struct.uvesafb_ktask** %6, align 8
  %26 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %27 = icmp ne %struct.uvesafb_ktask* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %41

29:                                               ; preds = %24
  %30 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %31 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 3, i32* %33, align 4
  %34 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %35 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %34)
  %36 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %37 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %38 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @uvesafb_vbe_state_restore(%struct.uvesafb_par* %36, i32 %39)
  br label %41

41:                                               ; preds = %29, %28, %23
  %42 = load %struct.uvesafb_par*, %struct.uvesafb_par** %7, align 8
  %43 = getelementptr inbounds %struct.uvesafb_par, %struct.uvesafb_par* %42, i32 0, i32 0
  %44 = call i32 @atomic_dec(i32* %43)
  %45 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %6, align 8
  %46 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %41, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @uvesafb_vbe_state_restore(%struct.uvesafb_par*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
