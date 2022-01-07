; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_merge_fs_addr4.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_merge_fs_addr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i32, i32, i32, %struct.sockaddr_rxrpc* }
%struct.sockaddr_rxrpc = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.sockaddr_in }
%struct.sockaddr_in = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_merge_fs_addr4(%struct.afs_addr_list* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.afs_addr_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_rxrpc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.afs_addr_list* %0, %struct.afs_addr_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @ntohl(i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %16 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %19 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %143

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %71, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %27 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %74

30:                                               ; preds = %24
  %31 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %32 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %31, i32 0, i32 3
  %33 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %33, i64 %35
  %37 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store %struct.sockaddr_in* %38, %struct.sockaddr_in** %10, align 8
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @ntohl(i32 %42)
  store i64 %43, i64* %11, align 8
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %10, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @ntohs(i32 %46)
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %30
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %143

56:                                               ; preds = %51, %30
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %11, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %74

65:                                               ; preds = %60, %56
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = icmp slt i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %74

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %24

74:                                               ; preds = %69, %64, %24
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %77 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %82 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %81, i32 0, i32 3
  %83 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %83, i64 %85
  %87 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %86, i64 1
  %88 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %89 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %88, i32 0, i32 3
  %90 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %90, i64 %92
  %94 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %95 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sub nsw i32 %96, %97
  %99 = sext i32 %98 to i64
  %100 = mul i64 24, %99
  %101 = trunc i64 %100 to i32
  %102 = call i32 @memmove(%struct.sockaddr_rxrpc* %87, %struct.sockaddr_rxrpc* %93, i32 %101)
  br label %103

103:                                              ; preds = %80, %74
  %104 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %105 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %104, i32 0, i32 3
  %106 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %105, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %106, i64 %108
  store %struct.sockaddr_rxrpc* %109, %struct.sockaddr_rxrpc** %7, align 8
  %110 = load i32, i32* @AF_RXRPC, align 4
  %111 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %112 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @SOCK_DGRAM, align 4
  %114 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %115 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %117 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %116, i32 0, i32 0
  store i32 12, i32* %117, align 4
  %118 = load i32, i32* @AF_INET, align 4
  %119 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %120 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %121, i32 0, i32 2
  store i32 %118, i32* %122, align 4
  %123 = load i64, i64* %6, align 8
  %124 = call i32 @htons(i64 %123)
  %125 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %126 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %7, align 8
  %131 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i32 %129, i32* %134, align 4
  %135 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %136 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  %140 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %103, %55, %22
  ret void
}

declare dso_local i64 @ntohl(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @memmove(%struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc*, i32) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
