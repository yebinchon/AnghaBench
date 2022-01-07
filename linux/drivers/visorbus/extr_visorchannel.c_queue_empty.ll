; ModuleID = '/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_queue_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/visorbus/extr_visorchannel.c_queue_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visorchannel = type { i32 }
%struct.signal_queue_header = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visorchannel*, i32)* @queue_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_empty(%struct.visorchannel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.visorchannel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.signal_queue_header, align 8
  store %struct.visorchannel* %0, %struct.visorchannel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.visorchannel*, %struct.visorchannel** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @sig_read_header(%struct.visorchannel* %7, i32 %8, %struct.signal_queue_header* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %19

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.signal_queue_header, %struct.signal_queue_header* %6, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %14, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %12, %11
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i64 @sig_read_header(%struct.visorchannel*, i32, %struct.signal_queue_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
