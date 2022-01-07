; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_merge_fs_addr6.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_merge_fs_addr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i32, i32, i32, %struct.sockaddr_rxrpc* }
%struct.sockaddr_rxrpc = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_merge_fs_addr6(%struct.afs_addr_list* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.afs_addr_list*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_rxrpc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca i64, align 8
  store %struct.afs_addr_list* %0, %struct.afs_addr_list** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %13 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %16 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %135

20:                                               ; preds = %3
  %21 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %22 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %67, %20
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %27 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %70

30:                                               ; preds = %24
  %31 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %32 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %31, i32 0, i32 3
  %33 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %33, i64 %35
  %37 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store %struct.sockaddr_in6* %38, %struct.sockaddr_in6** %10, align 8
  %39 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohs(i32 %41)
  store i64 %42, i64* %11, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  %46 = call i32 @memcmp(i32* %43, i32* %45, i32 16)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %30
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %135

54:                                               ; preds = %49, %30
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %70

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %70

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %24

70:                                               ; preds = %65, %61, %24
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %73 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %99

76:                                               ; preds = %70
  %77 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %78 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %77, i32 0, i32 3
  %79 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %79, i64 %81
  %83 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %82, i64 1
  %84 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %85 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %84, i32 0, i32 3
  %86 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %86, i64 %88
  %90 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %91 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = mul i64 24, %95
  %97 = trunc i64 %96 to i32
  %98 = call i32 @memmove(%struct.sockaddr_rxrpc* %83, %struct.sockaddr_rxrpc* %89, i32 %97)
  br label %99

99:                                               ; preds = %76, %70
  %100 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %101 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %100, i32 0, i32 3
  %102 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %102, i64 %104
  store %struct.sockaddr_rxrpc* %105, %struct.sockaddr_rxrpc** %7, align 8
  %106 = load i32, i32* @AF_RXRPC, align 4
  %107 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %108 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @SOCK_DGRAM, align 4
  %110 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %111 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %113 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %112, i32 0, i32 0
  store i32 12, i32* %113, align 4
  %114 = load i32, i32* @AF_INET6, align 4
  %115 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %116 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i32 0, i32 2
  store i32 %114, i32* %118, align 4
  %119 = load i64, i64* %6, align 8
  %120 = call i32 @htons(i64 %119)
  %121 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %122 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %126 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %127, i32 0, i32 0
  %129 = load i32*, i32** %5, align 8
  %130 = call i32 @memcpy(i32* %128, i32* %129, i32 16)
  %131 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %132 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %99, %53, %19
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @memmove(%struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
