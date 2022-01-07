; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_check_and_send_immediate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_check_and_send_immediate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i64, i32, i32, i32, i32, i32 }

@SMBD_CONNECTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_connection*)* @check_and_send_immediate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_and_send_immediate(%struct.smbd_connection* %0) #0 {
  %2 = alloca %struct.smbd_connection*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %2, align 8
  %3 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %4 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SMBD_CONNECTED, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %11 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %10, i32 0, i32 1
  store i32 1, i32* %11, align 8
  %12 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %13 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %12, i32 0, i32 5
  %14 = call i32 @atomic_read(i32* %13)
  %15 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %16 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %9
  %21 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %22 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.smbd_connection*, %struct.smbd_connection** %2, align 8
  %25 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %24, i32 0, i32 3
  %26 = call i32 @queue_delayed_work(i32 %23, i32* %25, i32 0)
  br label %27

27:                                               ; preds = %8, %20, %9
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
