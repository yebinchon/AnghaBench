; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_alloc_addrlist.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_addr_list.c_afs_alloc_addrlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_addr_list = type { i32, %struct.sockaddr_rxrpc*, i32 }
%struct.sockaddr_rxrpc = type { i16, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"%u,%u,%u\00", align 1
@AFS_MAX_ADDRESSES = common dso_local global i32 0, align 4
@addrs = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@AF_RXRPC = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.afs_addr_list* @afs_alloc_addrlist(i32 %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.afs_addr_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca %struct.afs_addr_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_rxrpc*, align 8
  store i32 %0, i32* %5, align 4
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  %11 = load i32, i32* %5, align 4
  %12 = load i16, i16* %6, align 2
  %13 = load i16, i16* %7, align 2
  %14 = call i32 @_enter(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %11, i16 zeroext %12, i16 zeroext %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @AFS_MAX_ADDRESSES, align 4
  %17 = icmp ugt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @AFS_MAX_ADDRESSES, align 4
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %18, %3
  %21 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %22 = load i32, i32* @addrs, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @struct_size(%struct.afs_addr_list* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.afs_addr_list* @kzalloc(i32 %24, i32 %25)
  store %struct.afs_addr_list* %26, %struct.afs_addr_list** %8, align 8
  %27 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %28 = icmp ne %struct.afs_addr_list* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  store %struct.afs_addr_list* null, %struct.afs_addr_list** %4, align 8
  br label %75

30:                                               ; preds = %20
  %31 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %32 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %31, i32 0, i32 2
  %33 = call i32 @refcount_set(i32* %32, i32 1)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %36 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  store i32 0, i32* %9, align 4
  br label %37

37:                                               ; preds = %70, %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %73

41:                                               ; preds = %37
  %42 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  %43 = getelementptr inbounds %struct.afs_addr_list, %struct.afs_addr_list* %42, i32 0, i32 1
  %44 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %44, i64 %46
  store %struct.sockaddr_rxrpc* %47, %struct.sockaddr_rxrpc** %10, align 8
  %48 = load i32, i32* @AF_RXRPC, align 4
  %49 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %50 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i16, i16* %6, align 2
  %52 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %53 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %52, i32 0, i32 0
  store i16 %51, i16* %53, align 4
  %54 = load i32, i32* @SOCK_DGRAM, align 4
  %55 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %56 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %58 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %57, i32 0, i32 1
  store i32 8, i32* %58, align 4
  %59 = load i32, i32* @AF_INET6, align 4
  %60 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %61 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  %64 = load i16, i16* %7, align 2
  %65 = call i32 @htons(i16 zeroext %64)
  %66 = load %struct.sockaddr_rxrpc*, %struct.sockaddr_rxrpc** %10, align 8
  %67 = getelementptr inbounds %struct.sockaddr_rxrpc, %struct.sockaddr_rxrpc* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  br label %70

70:                                               ; preds = %41
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %37

73:                                               ; preds = %37
  %74 = load %struct.afs_addr_list*, %struct.afs_addr_list** %8, align 8
  store %struct.afs_addr_list* %74, %struct.afs_addr_list** %4, align 8
  br label %75

75:                                               ; preds = %73, %29
  %76 = load %struct.afs_addr_list*, %struct.afs_addr_list** %4, align 8
  ret %struct.afs_addr_list* %76
}

declare dso_local i32 @_enter(i8*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local %struct.afs_addr_list* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.afs_addr_list*, i32, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
