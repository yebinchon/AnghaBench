; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_signalremove_inner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_signalremove_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32 }
%struct.signal_queue_header = type { i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@tail = common dso_local global i32 0, align 4
@num_received = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorchannel*, i32, i8*)* @signalremove_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @signalremove_inner(%struct.visorchannel* %0, i32 %1, i8* %2) #0 {
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
  br label %67

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %67

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %29, %31
  %33 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @sig_read_data(%struct.visorchannel* %34, i32 %35, %struct.signal_queue_header* %8, i32 %37, i8* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %26
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %67

44:                                               ; preds = %26
  %45 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %8, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = call i32 (...) @mb()
  %49 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @tail, align 4
  %52 = call i32 @SIG_WRITE_FIELD(%struct.visorchannel* %49, i32 %50, %struct.signal_queue_header* %8, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %67

57:                                               ; preds = %44
  %58 = load %struct.visorchannel*, %struct.visorchannel** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @num_received, align 4
  %61 = call i32 @SIG_WRITE_FIELD(%struct.visorchannel* %58, i32 %59, %struct.signal_queue_header* %8, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %4, align 4
  br label %67

66:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %66, %64, %55, %42, %23, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @sig_read_header(%struct.visorchannel*, i32, %struct.signal_queue_header*) #1

declare dso_local i32 @sig_read_data(%struct.visorchannel*, i32, %struct.signal_queue_header*, i32, i8*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @SIG_WRITE_FIELD(%struct.visorchannel*, i32, %struct.signal_queue_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
