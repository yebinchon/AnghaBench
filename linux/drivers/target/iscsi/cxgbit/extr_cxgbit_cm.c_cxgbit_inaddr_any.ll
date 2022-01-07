; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_inaddr_any.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_cm.c_cxgbit_inaddr_any.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbit_np = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_addr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IPV6_ADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxgbit_np*)* @cxgbit_inaddr_any to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_inaddr_any(%struct.cxgbit_np* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxgbit_np*, align 8
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  store %struct.cxgbit_np* %0, %struct.cxgbit_np** %3, align 8
  %9 = load %struct.cxgbit_np*, %struct.cxgbit_np** %3, align 8
  %10 = getelementptr inbounds %struct.cxgbit_np, %struct.cxgbit_np* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.sockaddr_storage* %11, %struct.sockaddr_storage** %4, align 8
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %13 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AF_INET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %1
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %20 = bitcast %struct.sockaddr_storage* %19 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %20, %struct.sockaddr_in** %7, align 8
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @INADDR_ANY, align 4
  %26 = call i64 @htonl(i32 %25)
  %27 = icmp eq i64 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %48

29:                                               ; preds = %18
  br label %47

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @AF_INET6, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %36 = bitcast %struct.sockaddr_storage* %35 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %36, %struct.sockaddr_in6** %8, align 8
  %37 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %37, i32 0, i32 0
  %39 = bitcast i32* %38 to %struct.in6_addr*
  %40 = call i32 @ipv6_addr_type(%struct.in6_addr* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IPV6_ADDR_ANY, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %48

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %30
  br label %47

47:                                               ; preds = %46, %29
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %28
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
