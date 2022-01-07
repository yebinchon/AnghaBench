; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_server_unresponsive.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_server_unresponsive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i64, i32, i32, i64 }

@CifsGood = common dso_local global i64 0, align 8
@CifsNeedNegotiate = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"has not responded in %lu seconds. Reconnecting...\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*)* @server_unresponsive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_unresponsive(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %3, align 8
  %4 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %5 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CifsGood, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %11 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CifsNeedNegotiate, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9, %1
  %16 = load i32, i32* @jiffies, align 4
  %17 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %18 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %21 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 3, %22
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %19, %24
  %26 = call i64 @time_after(i32 %16, i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %15
  %29 = load i32, i32* @VFS, align 4
  %30 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %31 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 3, %32
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %33, %34
  %36 = call i32 @cifs_server_dbg(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %38 = call i32 @cifs_reconnect(%struct.TCP_Server_Info* %37)
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %3, align 8
  %40 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %39, i32 0, i32 2
  %41 = call i32 @wake_up(i32* %40)
  store i32 1, i32* %2, align 4
  br label %43

42:                                               ; preds = %15, %9
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %28
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

declare dso_local i32 @cifs_reconnect(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
