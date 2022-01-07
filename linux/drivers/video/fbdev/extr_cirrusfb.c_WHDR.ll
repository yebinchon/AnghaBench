; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_WHDR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cirrusfb.c_WHDR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cirrusfb_info = type { i64 }

@BT_PICASSO = common dso_local global i64 0, align 8
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cirrusfb_info*, i8)* @WHDR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WHDR(%struct.cirrusfb_info* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.cirrusfb_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  store %struct.cirrusfb_info* %0, %struct.cirrusfb_info** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %7 = call i64 @is_laguna(%struct.cirrusfb_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %62

10:                                               ; preds = %2
  %11 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %12 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BT_PICASSO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %18 = load i32, i32* @VGA_PEL_MSK, align 4
  %19 = call i32 @WGen(%struct.cirrusfb_info* %17, i32 %18, i32 0)
  %20 = call i32 @udelay(i32 200)
  %21 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %22 = load i32, i32* @VGA_PEL_IW, align 4
  %23 = call zeroext i8 @RGen(%struct.cirrusfb_info* %21, i32 %22)
  store i8 %23, i8* %5, align 1
  %24 = call i32 @udelay(i32 200)
  br label %25

25:                                               ; preds = %16, %10
  %26 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %27 = load i32, i32* @VGA_PEL_MSK, align 4
  %28 = call zeroext i8 @RGen(%struct.cirrusfb_info* %26, i32 %27)
  store i8 %28, i8* %5, align 1
  %29 = call i32 @udelay(i32 200)
  %30 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %31 = load i32, i32* @VGA_PEL_MSK, align 4
  %32 = call zeroext i8 @RGen(%struct.cirrusfb_info* %30, i32 %31)
  store i8 %32, i8* %5, align 1
  %33 = call i32 @udelay(i32 200)
  %34 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %35 = load i32, i32* @VGA_PEL_MSK, align 4
  %36 = call zeroext i8 @RGen(%struct.cirrusfb_info* %34, i32 %35)
  store i8 %36, i8* %5, align 1
  %37 = call i32 @udelay(i32 200)
  %38 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %39 = load i32, i32* @VGA_PEL_MSK, align 4
  %40 = call zeroext i8 @RGen(%struct.cirrusfb_info* %38, i32 %39)
  store i8 %40, i8* %5, align 1
  %41 = call i32 @udelay(i32 200)
  %42 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %43 = load i32, i32* @VGA_PEL_MSK, align 4
  %44 = load i8, i8* %4, align 1
  %45 = zext i8 %44 to i32
  %46 = call i32 @WGen(%struct.cirrusfb_info* %42, i32 %43, i32 %45)
  %47 = call i32 @udelay(i32 200)
  %48 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %49 = getelementptr inbounds %struct.cirrusfb_info, %struct.cirrusfb_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BT_PICASSO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %25
  %54 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %55 = load i32, i32* @VGA_PEL_IW, align 4
  %56 = call zeroext i8 @RGen(%struct.cirrusfb_info* %54, i32 %55)
  store i8 %56, i8* %5, align 1
  %57 = call i32 @udelay(i32 200)
  %58 = load %struct.cirrusfb_info*, %struct.cirrusfb_info** %3, align 8
  %59 = load i32, i32* @VGA_PEL_MSK, align 4
  %60 = call i32 @WGen(%struct.cirrusfb_info* %58, i32 %59, i32 255)
  %61 = call i32 @udelay(i32 200)
  br label %62

62:                                               ; preds = %9, %53, %25
  ret void
}

declare dso_local i64 @is_laguna(%struct.cirrusfb_info*) #1

declare dso_local i32 @WGen(%struct.cirrusfb_info*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local zeroext i8 @RGen(%struct.cirrusfb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
