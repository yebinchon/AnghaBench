; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_addr_compare.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_addr_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, %struct.sockaddr_storage*)* @addr_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_compare(%struct.sockaddr_storage* %0, %struct.sockaddr_storage* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %5, align 8
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %60 [
    i32 129, label %13
    i32 128, label %38
  ]

13:                                               ; preds = %2
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %15, %struct.sockaddr_in** %6, align 8
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %17 = bitcast %struct.sockaddr_storage* %16 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %17, %struct.sockaddr_in** %7, align 8
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %21, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %62

28:                                               ; preds = %13
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %62

37:                                               ; preds = %28
  br label %61

38:                                               ; preds = %2
  %39 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %40 = bitcast %struct.sockaddr_storage* %39 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %40, %struct.sockaddr_in6** %8, align 8
  %41 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %42 = bitcast %struct.sockaddr_storage* %41 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %42, %struct.sockaddr_in6** %9, align 8
  %43 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %44 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %43, i32 0, i32 1
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = call i32 @ipv6_addr_equal(i32* %44, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %62

50:                                               ; preds = %38
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %52 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %62

59:                                               ; preds = %50
  br label %61

60:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %59, %37
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %60, %58, %49, %36, %27
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @ipv6_addr_equal(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
