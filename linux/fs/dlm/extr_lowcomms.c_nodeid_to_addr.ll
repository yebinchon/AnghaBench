; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_nodeid_to_addr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_lowcomms.c_nodeid_to_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.dlm_node_addr = type { i64, i64, %struct.sockaddr_storage** }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }

@dlm_local_count = common dso_local global i32 0, align 4
@dlm_node_addrs_spin = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@dlm_local_addr = common dso_local global %struct.TYPE_4__** null, align 8
@AF_INET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.sockaddr_storage*, %struct.sockaddr*, i32)* @nodeid_to_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nodeid_to_addr(i32 %0, %struct.sockaddr_storage* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca %struct.dlm_node_addr*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca %struct.sockaddr_in6*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* @dlm_local_count, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %113

19:                                               ; preds = %4
  %20 = call i32 @spin_lock(i32* @dlm_node_addrs_spin)
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.dlm_node_addr* @find_node_addr(i32 %21)
  store %struct.dlm_node_addr* %22, %struct.dlm_node_addr** %11, align 8
  %23 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %24 = icmp ne %struct.dlm_node_addr* %23, null
  br i1 %24, label %25, label %59

25:                                               ; preds = %19
  %26 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %27 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %25
  %31 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %32 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %31, i32 0, i32 2
  %33 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %32, align 8
  %34 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %35 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.sockaddr_storage*, %struct.sockaddr_storage** %33, i64 %36
  %38 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %37, align 8
  %39 = call i32 @memcpy(%struct.sockaddr_storage* %10, %struct.sockaddr_storage* %38, i32 4)
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %30
  %43 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %44 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %44, align 8
  %47 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %48 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %51 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %42
  %55 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %56 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %42
  br label %58

58:                                               ; preds = %57, %30
  br label %59

59:                                               ; preds = %58, %25, %19
  %60 = call i32 @spin_unlock(i32* @dlm_node_addrs_spin)
  %61 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %62 = icmp ne %struct.dlm_node_addr* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @EEXIST, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %113

66:                                               ; preds = %59
  %67 = load %struct.dlm_node_addr*, %struct.dlm_node_addr** %11, align 8
  %68 = getelementptr inbounds %struct.dlm_node_addr, %struct.dlm_node_addr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %5, align 4
  br label %113

74:                                               ; preds = %66
  %75 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %76 = icmp ne %struct.sockaddr_storage* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %79 = call i32 @memcpy(%struct.sockaddr_storage* %78, %struct.sockaddr_storage* %10, i32 4)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %82 = icmp ne %struct.sockaddr* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  store i32 0, i32* %5, align 4
  br label %113

84:                                               ; preds = %80
  %85 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @dlm_local_addr, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %85, i64 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @AF_INET, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %84
  %93 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %93, %struct.sockaddr_in** %12, align 8
  %94 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %95 = bitcast %struct.sockaddr* %94 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %95, %struct.sockaddr_in** %13, align 8
  %96 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %97 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.sockaddr_in*, %struct.sockaddr_in** %13, align 8
  %101 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  br label %112

103:                                              ; preds = %84
  %104 = bitcast %struct.sockaddr_storage* %10 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %104, %struct.sockaddr_in6** %14, align 8
  %105 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %106 = bitcast %struct.sockaddr* %105 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %106, %struct.sockaddr_in6** %15, align 8
  %107 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %108 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %111 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %103, %92
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %112, %83, %71, %63, %18
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dlm_node_addr* @find_node_addr(i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
