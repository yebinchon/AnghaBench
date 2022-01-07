; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sh7760fb.c_sh7760fb_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.sh7760fb_par* }
%struct.sh7760fb_par = type { i64, %struct.sh7760fb_platdata* }
%struct.sh7760fb_platdata = type { i32 (i32)* }

@LDCNTR = common dso_local global i64 0, align 8
@LDINTR = common dso_local global i64 0, align 8
@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@VINT_START = common dso_local global i16 0, align 2
@LDCNTR_DON2 = common dso_local global i16 0, align 2
@LDCNTR_DON = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.fb_info*)* @sh7760fb_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh7760fb_blank(i32 %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.sh7760fb_par*, align 8
  %6 = alloca %struct.sh7760fb_platdata*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.fb_info* %1, %struct.fb_info** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 0
  %12 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %11, align 8
  store %struct.sh7760fb_par* %12, %struct.sh7760fb_par** %5, align 8
  %13 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  %14 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %13, i32 0, i32 1
  %15 = load %struct.sh7760fb_platdata*, %struct.sh7760fb_platdata** %14, align 8
  store %struct.sh7760fb_platdata* %15, %struct.sh7760fb_platdata** %6, align 8
  %16 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  %17 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LDCNTR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call zeroext i16 @ioread16(i64 %20)
  store i16 %21, i16* %7, align 2
  %22 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  %23 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LDINTR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call zeroext i16 @ioread16(i64 %26)
  store i16 %27, i16* %8, align 2
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %2
  %32 = load i16, i16* @VINT_START, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, i16* %8, align 2
  %35 = zext i16 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %8, align 2
  %38 = load i16, i16* @LDCNTR_DON2, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @LDCNTR_DON, align 2
  %41 = zext i16 %40 to i32
  %42 = or i32 %39, %41
  %43 = trunc i32 %42 to i16
  store i16 %43, i16* %7, align 2
  store i32 3, i32* %9, align 4
  br label %53

44:                                               ; preds = %2
  %45 = load i16, i16* @VINT_START, align 2
  %46 = zext i16 %45 to i32
  %47 = xor i32 %46, -1
  %48 = load i16, i16* %8, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, %47
  %51 = trunc i32 %50 to i16
  store i16 %51, i16* %8, align 2
  %52 = load i16, i16* @LDCNTR_DON2, align 2
  store i16 %52, i16* %7, align 2
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %44, %31
  %54 = load %struct.sh7760fb_platdata*, %struct.sh7760fb_platdata** %6, align 8
  %55 = getelementptr inbounds %struct.sh7760fb_platdata, %struct.sh7760fb_platdata* %54, i32 0, i32 0
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = icmp ne i32 (i32)* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.sh7760fb_platdata*, %struct.sh7760fb_platdata** %6, align 8
  %60 = getelementptr inbounds %struct.sh7760fb_platdata, %struct.sh7760fb_platdata* %59, i32 0, i32 0
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = call i32 %61(i32 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i16, i16* %8, align 2
  %66 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  %67 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @LDINTR, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @iowrite16(i16 zeroext %65, i64 %70)
  %72 = load i16, i16* %7, align 2
  %73 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  %74 = getelementptr inbounds %struct.sh7760fb_par, %struct.sh7760fb_par* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LDCNTR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @iowrite16(i16 zeroext %72, i64 %77)
  %79 = load %struct.sh7760fb_par*, %struct.sh7760fb_par** %5, align 8
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @wait_for_lps(%struct.sh7760fb_par* %79, i32 %80)
  ret i32 %81
}

declare dso_local zeroext i16 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i16 zeroext, i64) #1

declare dso_local i32 @wait_for_lps(%struct.sh7760fb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
