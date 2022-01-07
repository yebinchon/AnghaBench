; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_rx_get_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/extr_rio_cm.c_riocm_rx_get_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cm_dev = type { i8**, i32, i32 }

@cmbox = common dso_local global i32 0, align 4
@RIOCM_RX_RING_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no record for buffer 0x%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.cm_dev*)* @riocm_rx_get_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @riocm_rx_get_msg(%struct.cm_dev* %0) #0 {
  %2 = alloca %struct.cm_dev*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.cm_dev* %0, %struct.cm_dev** %2, align 8
  %5 = load %struct.cm_dev*, %struct.cm_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @cmbox, align 4
  %9 = call i8* @rio_get_inb_message(i32 %7, i32 %8)
  store i8* %9, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %39, %12
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RIOCM_RX_RING_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.cm_dev*, %struct.cm_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %18, i32 0, i32 0
  %20 = load i8**, i8*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = icmp eq i8* %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %17
  %28 = load %struct.cm_dev*, %struct.cm_dev** %2, align 8
  %29 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* null, i8** %33, align 8
  %34 = load %struct.cm_dev*, %struct.cm_dev** %2, align 8
  %35 = getelementptr inbounds %struct.cm_dev, %struct.cm_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %42

38:                                               ; preds = %17
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %13

42:                                               ; preds = %27, %13
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @RIOCM_RX_RING_SIZE, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8*, i8** %3, align 8
  %48 = call i32 @riocm_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %47)
  br label %49

49:                                               ; preds = %46, %42
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i8*, i8** %3, align 8
  ret i8* %51
}

declare dso_local i8* @rio_get_inb_message(i32, i32) #1

declare dso_local i32 @riocm_warn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
