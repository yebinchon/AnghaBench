; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_signalinsert_inner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_signalinsert_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32 }
%struct.signal_queue_header = type { i32, i32, i32, i32, i32 }

@num_overflows = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@head = common dso_local global i32 0, align 4
@num_sent = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorchannel*, i32, i8*)* @signalinsert_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signalinsert_inner(%struct.visorchannel* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.visorchannel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.signal_queue_header, align 4
  %9 = alloca i32, align 4
  store %struct.visorchannel* %0, %struct.visorchannel** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @sig_read_header(%struct.visorchannel* %10, i32 %11, %struct.signal_queue_header* %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %79

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  %21 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = srem i32 %20, %22
  %24 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %17
  %31 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @num_overflows, align 4
  %37 = call i32 @SIG_WRITE_FIELD(%struct.visorchannel* %34, i32 %35, %struct.signal_queue_header* %8, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %30
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %79

45:                                               ; preds = %17
  %46 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @sig_write_data(%struct.visorchannel* %46, i32 %47, %struct.signal_queue_header* %8, i32 %49, i8* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %79

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = call i32 (...) @mb()
  %61 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @head, align 4
  %64 = call i32 @SIG_WRITE_FIELD(%struct.visorchannel* %61, i32 %62, %struct.signal_queue_header* %8, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %56
  %70 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @num_sent, align 4
  %73 = call i32 @SIG_WRITE_FIELD(%struct.visorchannel* %70, i32 %71, %struct.signal_queue_header* %8, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %79

78:                                               ; preds = %69
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %76, %67, %54, %42, %40, %15
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @sig_read_header(%struct.visorchannel*, i32, %struct.signal_queue_header*) #1

declare dso_local i32 @SIG_WRITE_FIELD(%struct.visorchannel*, i32, %struct.signal_queue_header*, i32) #1

declare dso_local i32 @sig_write_data(%struct.visorchannel*, i32, %struct.signal_queue_header*, i32, i8*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
