; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_banshee_wait_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_banshee_wait_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.tdfx_par* }
%struct.tdfx_par = type { i32 }

@COMMAND_3D = common dso_local global i32 0, align 4
@COMMAND_3D_NOP = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@STATUS_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @banshee_wait_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @banshee_wait_idle(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.tdfx_par*, align 8
  %4 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 0
  %7 = load %struct.tdfx_par*, %struct.tdfx_par** %6, align 8
  store %struct.tdfx_par* %7, %struct.tdfx_par** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %9 = call i32 @banshee_make_room(%struct.tdfx_par* %8, i32 1)
  %10 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %11 = load i32, i32* @COMMAND_3D, align 4
  %12 = load i32, i32* @COMMAND_3D_NOP, align 4
  %13 = call i32 @tdfx_outl(%struct.tdfx_par* %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %25, %1
  %15 = load %struct.tdfx_par*, %struct.tdfx_par** %3, align 8
  %16 = load i32, i32* @STATUS, align 4
  %17 = call i32 @tdfx_inl(%struct.tdfx_par* %15, i32 %16)
  %18 = load i32, i32* @STATUS_BUSY, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %21, %14
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %14, label %28

28:                                               ; preds = %25
  ret i32 0
}

declare dso_local i32 @banshee_make_room(%struct.tdfx_par*, i32) #1

declare dso_local i32 @tdfx_outl(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @tdfx_inl(%struct.tdfx_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
