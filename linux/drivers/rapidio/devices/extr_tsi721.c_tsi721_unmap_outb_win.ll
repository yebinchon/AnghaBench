; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_unmap_outb_win.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_unmap_outb_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { i32, i64, %struct.TYPE_3__*, %struct.tsi721_ob_win* }
%struct.TYPE_3__ = type { i32 }
%struct.tsi721_ob_win = type { i32, i64, i64, i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@OBW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"did=%d ra=0x%llx\00", align 1
@TSI721_OBWIN_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"free OBW%d @%llx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rio_mport*, i64, i64)* @tsi721_unmap_outb_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_unmap_outb_win(%struct.rio_mport* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rio_mport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tsi721_device*, align 8
  %8 = alloca %struct.tsi721_ob_win*, align 8
  %9 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %11 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %10, i32 0, i32 0
  %12 = load %struct.tsi721_device*, %struct.tsi721_device** %11, align 8
  store %struct.tsi721_device* %12, %struct.tsi721_device** %7, align 8
  %13 = load i32, i32* @OBW, align 4
  %14 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %15 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i64, i64* %6, align 8
  %21 = call i32 @tsi_debug(i32 %13, i32* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, i64 %20)
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %85, %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @TSI721_OBWIN_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %88

26:                                               ; preds = %22
  %27 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %28 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %27, i32 0, i32 3
  %29 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %29, i64 %31
  store %struct.tsi721_ob_win* %32, %struct.tsi721_ob_win** %8, align 8
  %33 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %34 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %84

37:                                               ; preds = %26
  %38 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %39 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %37
  %44 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %45 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %84

49:                                               ; preds = %43
  %50 = load i32, i32* @OBW, align 4
  %51 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %52 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %51, i32 0, i32 2
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %57 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @tsi_debug(i32 %50, i32* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %58)
  %60 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %61 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %60, i32 0, i32 0
  store i32 0, i32* %61, align 8
  %62 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %63 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @TSI721_OBWINLB(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = call i32 @iowrite32(i32 0, i64 %67)
  %69 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %70 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tsi721_ob_win*, %struct.tsi721_ob_win** %8, align 8
  %73 = getelementptr inbounds %struct.tsi721_ob_win, %struct.tsi721_ob_win* %72, i32 0, i32 5
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %71
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  %80 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %81 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  br label %88

84:                                               ; preds = %43, %37, %26
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %22

88:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32, i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i64 @TSI721_OBWINLB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
