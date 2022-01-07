; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_put_empty_packet.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_put_empty_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i32, i32, i32, i32 }
%struct.smbd_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_connection*, %struct.smbd_response*)* @put_empty_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_empty_packet(%struct.smbd_connection* %0, %struct.smbd_response* %1) #0 {
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca %struct.smbd_response*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  store %struct.smbd_response* %1, %struct.smbd_response** %4, align 8
  %5 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %6 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %5, i32 0, i32 2
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %9 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %8, i32 0, i32 0
  %10 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %11 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %10, i32 0, i32 4
  %12 = call i32 @list_add_tail(i32* %9, i32* %11)
  %13 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %14 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %18 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock(i32* %18)
  %20 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %21 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %24 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %23, i32 0, i32 0
  %25 = call i32 @queue_work(i32 %22, i32* %24)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
