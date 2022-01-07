; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_check_np_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_check_np_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i64 }
%struct.iscsi_np = type { i32, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_in6 = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_np_match(%struct.sockaddr_storage* %0, %struct.iscsi_np* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr_storage*, align 8
  %6 = alloca %struct.iscsi_np*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %5, align 8
  store %struct.iscsi_np* %1, %struct.iscsi_np** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %16 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AF_INET6, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %44

20:                                               ; preds = %3
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %22 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %22, %struct.sockaddr_in6** %10, align 8
  %23 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %24 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %23, i32 0, i32 1
  %25 = bitcast i32* %24 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %25, %struct.sockaddr_in6** %11, align 8
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @memcmp(i32* %28, i32* %31, i32 4)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %20
  store i32 1, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @ntohs(i32 %38)
  store i64 %39, i64* %13, align 8
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohs(i32 %42)
  store i64 %43, i64* %14, align 8
  br label %69

44:                                               ; preds = %3
  %45 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %5, align 8
  %46 = bitcast %struct.sockaddr_storage* %45 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %46, %struct.sockaddr_in** %8, align 8
  %47 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %47, i32 0, i32 1
  %49 = bitcast i32* %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %49, %struct.sockaddr_in** %9, align 8
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @ntohs(i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @ntohs(i32 %67)
  store i64 %68, i64* %14, align 8
  br label %69

69:                                               ; preds = %60, %35
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %13, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load %struct.iscsi_np*, %struct.iscsi_np** %6, align 8
  %78 = getelementptr inbounds %struct.iscsi_np, %struct.iscsi_np* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %84

83:                                               ; preds = %76, %72, %69
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
