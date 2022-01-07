; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c___mt7601u_rr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c___mt7601u_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32 }

@USHRT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"read high off:%08x\00", align 1
@MT_VEND_MULTI_READ = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@MT_VEND_BUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Error: wrong size read:%d off:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, i32)* @__mt7601u_rr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mt7601u_rr(%struct.mt7601u_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @USHRT_MAX, align 4
  %9 = icmp sgt i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @WARN_ONCE(i32 %10, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %14 = load i32, i32* @MT_VEND_MULTI_READ, align 4
  %15 = load i32, i32* @USB_DIR_IN, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MT_VEND_BUF, align 4
  %21 = call i32 @mt7601u_vendor_request(%struct.mt7601u_dev* %13, i32 %14, i32 %15, i32 0, i32 %16, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MT_VEND_BUF, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @get_unaligned_le32(i32 %28)
  store i32 %29, i32* %6, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %33, %30
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @trace_reg_read(%struct.mt7601u_dev* %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @mt7601u_vendor_request(%struct.mt7601u_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_unaligned_le32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @trace_reg_read(%struct.mt7601u_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
