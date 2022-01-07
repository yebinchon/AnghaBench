; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_recv.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { %struct.TYPE_7__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.smbd_response = type { %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_recv_wr = type { i32, %struct.TYPE_8__*, i32*, %struct.TYPE_6__* }

@EIO = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@recv_done = common dso_local global i32 0, align 4
@ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ib_post_recv failed rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbd_connection*, %struct.smbd_response*)* @smbd_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbd_post_recv(%struct.smbd_connection* %0, %struct.smbd_response* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbd_connection*, align 8
  %5 = alloca %struct.smbd_response*, align 8
  %6 = alloca %struct.ib_recv_wr, align 8
  %7 = alloca i32, align 4
  store %struct.smbd_connection* %0, %struct.smbd_connection** %4, align 8
  store %struct.smbd_response* %1, %struct.smbd_response** %5, align 8
  %8 = load i32, i32* @EIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %11 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %16 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %19 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %22 = call i32 @ib_dma_map_single(i32 %14, i32 %17, i32 %20, i32 %21)
  %23 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %24 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %27 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %32 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @ib_dma_mapping_error(i32 %30, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %97

39:                                               ; preds = %2
  %40 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %41 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %44 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %47 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %52 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @recv_done, align 4
  %55 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %56 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %59 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 3
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 2
  store i32* null, i32** %61, align 8
  %62 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %63 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 1
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %64, align 8
  %65 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %6, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %67 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ib_post_recv(i32 %70, %struct.ib_recv_wr* %6, i32* null)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %39
  %75 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %76 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %81 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.smbd_response*, %struct.smbd_response** %5, align 8
  %85 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %89 = call i32 @ib_dma_unmap_single(i32 %79, i32 %83, i32 %87, i32 %88)
  %90 = load %struct.smbd_connection*, %struct.smbd_connection** %4, align 8
  %91 = call i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection* %90)
  %92 = load i32, i32* @ERR, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @log_rdma_recv(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %74, %39
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %95, %37
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @ib_dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @ib_dma_mapping_error(i32, i32) #1

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, i32*) #1

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @smbd_disconnect_rdma_connection(%struct.smbd_connection*) #1

declare dso_local i32 @log_rdma_recv(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
