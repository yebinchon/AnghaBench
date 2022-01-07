; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_add_inb_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_add_inb_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rio_mport = type { %struct.tsi721_device* }
%struct.tsi721_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i8** }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"Error adding inbound buffer %d, buffer exists\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rio_mport*, i32, i8*)* @tsi721_add_inb_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_add_inb_buffer(%struct.rio_mport* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.rio_mport*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.tsi721_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.rio_mport* %0, %struct.rio_mport** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.rio_mport*, %struct.rio_mport** %4, align 8
  %11 = getelementptr inbounds %struct.rio_mport, %struct.rio_mport* %10, i32 0, i32 0
  %12 = load %struct.tsi721_device*, %struct.tsi721_device** %11, align 8
  store %struct.tsi721_device* %12, %struct.tsi721_device** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %14 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %22 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i8**, i8*** %27, align 8
  %29 = load i64, i64* %8, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %3
  %34 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %35 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @tsi_err(i32* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %9, align 4
  br label %81

42:                                               ; preds = %3
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %45 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %43, i8** %53, align 8
  %54 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %55 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %64 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %62, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %42
  %73 = load %struct.tsi721_device*, %struct.tsi721_device** %7, align 8
  %74 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %42
  br label %81

81:                                               ; preds = %80, %33
  %82 = load i32, i32* %9, align 4
  ret i32 %82
}

declare dso_local i32 @tsi_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
