; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_sw_babble_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_dsps.c_dsps_sw_babble_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32, i32 }

@MUSB_BABBLE_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"babble: MUSB_BABBLE_CTL value %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"STUCK_J is %s\0A\00", align 1
@MUSB_BABBLE_STUCK_J = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@MUSB_BABBLE_FORCE_TXIDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Set TXIDLE, wait J to clear\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"J not cleared, misc (%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*)* @dsps_sw_babble_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsps_sw_babble_control(%struct.musb* %0) #0 {
  %2 = alloca %struct.musb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.musb*, %struct.musb** %2, align 8
  %7 = getelementptr inbounds %struct.musb, %struct.musb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @MUSB_BABBLE_CTL, align 4
  %10 = call i32 @musb_readb(i32 %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.musb*, %struct.musb** %2, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 (i32, i8*, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.musb*, %struct.musb** %2, align 8
  %17 = getelementptr inbounds %struct.musb, %struct.musb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MUSB_BABBLE_STUCK_J, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %25 = call i32 (i32, i8*, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MUSB_BABBLE_STUCK_J, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %79

30:                                               ; preds = %1
  store i32 10, i32* %5, align 4
  %31 = load %struct.musb*, %struct.musb** %2, align 8
  %32 = getelementptr inbounds %struct.musb, %struct.musb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MUSB_BABBLE_CTL, align 4
  %35 = call i32 @musb_readb(i32 %33, i32 %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @MUSB_BABBLE_FORCE_TXIDLE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load %struct.musb*, %struct.musb** %2, align 8
  %40 = getelementptr inbounds %struct.musb, %struct.musb* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MUSB_BABBLE_CTL, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @musb_writeb(i32 %41, i32 %42, i32 %43)
  %45 = load %struct.musb*, %struct.musb** %2, align 8
  %46 = getelementptr inbounds %struct.musb, %struct.musb* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %65, %30
  %50 = load %struct.musb*, %struct.musb** %2, align 8
  %51 = getelementptr inbounds %struct.musb, %struct.musb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MUSB_BABBLE_CTL, align 4
  %54 = call i32 @musb_readb(i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = call i32 @udelay(i32 1)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @MUSB_BABBLE_STUCK_J, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %5, align 4
  %64 = icmp ne i32 %62, 0
  br label %65

65:                                               ; preds = %61, %56
  %66 = phi i1 [ false, %56 ], [ %64, %61 ]
  br i1 %66, label %49, label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @MUSB_BABBLE_STUCK_J, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load %struct.musb*, %struct.musb** %2, align 8
  %74 = getelementptr inbounds %struct.musb, %struct.musb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %3, align 4
  %77 = call i32 (i32, i8*, ...) @dev_dbg(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %76)
  store i32 1, i32* %4, align 4
  br label %78

78:                                               ; preds = %72, %67
  br label %80

79:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @musb_readb(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @musb_writeb(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
