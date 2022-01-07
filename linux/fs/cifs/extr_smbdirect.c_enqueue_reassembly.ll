; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_enqueue_reassembly.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_enqueue_reassembly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i32, i32, i32, i32, i32 }
%struct.smbd_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_connection*, %struct.smbd_response*, i32)* @enqueue_reassembly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enqueue_reassembly(%struct.smbd_connection* %0, %struct.smbd_response* %1, i32 %2) #0 {
  %4 = alloca %struct.smbd_connection*, align 8
  %5 = alloca %struct.smbd_response*, align 8
  %6 = alloca i32, align 4
  store %struct.smbd_connection* %0, %struct.smbd_connection** %4, align 8
  store %struct.smbd_response* %1, %struct.smbd_response** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %8 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %11 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %10, i32 0, i32 0
  %12 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %13 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %12, i32 0, i32 5
  %14 = call i32 @list_add_tail(i32* %11, i32* %13)
  %15 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %16 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = call i32 (...) @virt_wmb()
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %22 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %26 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %25, i32 0, i32 3
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %29 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %33 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @virt_wmb(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
