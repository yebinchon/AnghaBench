; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_port.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_connect.c_match_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i64 }
%struct.sockaddr_in6 = type { i64 }

@CIFS_PORT = common dso_local global i32 0, align 4
@RFC1001_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, %struct.sockaddr*)* @match_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_port(%struct.TCP_Server_Info* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TCP_Server_Info*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %8 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %9 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %35 [
    i32 129, label %17
    i32 128, label %26
  ]

17:                                               ; preds = %13
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 0
  %20 = bitcast i32* %19 to %struct.sockaddr_in*
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  store i64* %21, i64** %7, align 8
  %22 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %23 = bitcast %struct.sockaddr* %22 to %struct.sockaddr_in*
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %6, align 8
  br label %37

26:                                               ; preds = %13
  %27 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %4, align 8
  %28 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.sockaddr_in6*
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  store i64* %30, i64** %7, align 8
  %31 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %32 = bitcast %struct.sockaddr* %31 to %struct.sockaddr_in6*
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  br label %37

35:                                               ; preds = %13
  %36 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %26, %17
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @CIFS_PORT, align 4
  %42 = call i64 @htons(i32 %41)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %57

48:                                               ; preds = %40
  %49 = load i32, i32* @RFC1001_PORT, align 4
  %50 = call i64 @htons(i32 %49)
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %48, %37
  %52 = load i64, i64* %6, align 8
  %53 = load i64*, i64** %7, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %52, %54
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %47, %35, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
