; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_destroy_receive_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_destroy_receive_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32 }
%struct.smbd_response = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_connection*)* @destroy_receive_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_receive_buffers(%struct.smbd_connection* %0) #0 {
  %2 = alloca %struct.smbd_connection*, align 8
  %3 = alloca %struct.smbd_response*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %6 = call %struct.smbd_response* @get_receive_buffer(%struct.smbd_connection* %5)
  store %struct.smbd_response* %6, %struct.smbd_response** %3, align 8
  %7 = icmp ne %struct.smbd_response* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %4
  %9 = load %struct.smbd_response*, %struct.smbd_response** %3, align 8
  %10 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %11 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mempool_free(%struct.smbd_response* %9, i32 %12)
  br label %4

14:                                               ; preds = %4
  br label %15

15:                                               ; preds = %19, %14
  %16 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %17 = call %struct.smbd_response* @get_empty_queue_buffer(%struct.smbd_connection* %16)
  store %struct.smbd_response* %17, %struct.smbd_response** %3, align 8
  %18 = icmp ne %struct.smbd_response* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load %struct.smbd_response*, %struct.smbd_response** %3, align 8
  %21 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %22 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mempool_free(%struct.smbd_response* %20, i32 %23)
  br label %15

25:                                               ; preds = %15
  ret void
}

declare dso_local %struct.smbd_response* @get_receive_buffer(%struct.smbd_connection*) #1

declare dso_local i32 @mempool_free(%struct.smbd_response*, i32) #1

declare dso_local %struct.smbd_response* @get_empty_queue_buffer(%struct.smbd_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
