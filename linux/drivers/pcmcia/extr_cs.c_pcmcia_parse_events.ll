; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pcmcia_parse_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pcmcia_parse_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"parse_events: events %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcmcia_parse_events(%struct.pcmcia_socket* %0, i32 %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %6, i32 0, i32 3
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %16 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %15, i32 0, i32 1
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %29 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wake_up_process(i64 %30)
  br label %32

32:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_process(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
