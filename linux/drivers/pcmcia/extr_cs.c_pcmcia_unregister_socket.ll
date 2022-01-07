; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pcmcia_unregister_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_cs.c_pcmcia_unregister_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32, i32, %struct.TYPE_2__*, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.pcmcia_socket*)* }

@.str = private unnamed_addr constant [32 x i8] c"pcmcia_unregister_socket(0x%p)\0A\00", align 1
@pcmcia_socket_list_rwsem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcmcia_unregister_socket(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %3 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %4 = icmp ne %struct.pcmcia_socket* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %52

6:                                                ; preds = %1
  %7 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %7, i32 0, i32 6
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %10 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %19 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @kthread_stop(i64 %20)
  br label %22

22:                                               ; preds = %17, %6
  %23 = call i32 @down_write(i32* @pcmcia_socket_list_rwsem)
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 3
  %26 = call i32 @list_del(i32* %25)
  %27 = call i32 @up_write(i32* @pcmcia_socket_list_rwsem)
  %28 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %29 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %31, align 8
  %33 = icmp ne i32 (%struct.pcmcia_socket*)* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %36 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %35, i32 0, i32 1
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %39 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.pcmcia_socket*)*, i32 (%struct.pcmcia_socket*)** %41, align 8
  %43 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %44 = call i32 %42(%struct.pcmcia_socket* %43)
  %45 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %46 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %45, i32 0, i32 1
  %47 = call i32 @mutex_unlock(i32* %46)
  br label %48

48:                                               ; preds = %34, %22
  %49 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %50 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %49, i32 0, i32 0
  %51 = call i32 @wait_for_completion(i32* %50)
  br label %52

52:                                               ; preds = %48, %5
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
