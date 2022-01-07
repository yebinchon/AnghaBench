; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_rxtx_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_rxtx_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vring = type { i32, i32, i64, i64, %struct.vring_desc*, %struct.mlxbf_tmfifo* }
%struct.mlxbf_tmfifo = type { %struct.mlxbf_tmfifo_vring**, i64, %struct.mlxbf_tmfifo_vdev**, i64 }
%struct.mlxbf_tmfifo_vdev = type { %struct.mlxbf_tmfifo_vring*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.virtio_net_config }
%struct.virtio_net_config = type { i64 }
%struct.vring_desc = type { i32 }
%struct.mlxbf_tmfifo_msg_hdr = type { i64, i8* }

@MLXBF_TMFIFO_RX_DATA = common dso_local global i64 0, align 8
@VIRTIO_ID_NET = common dso_local global i8* null, align 8
@MLXBF_TMFIFO_NET_L2_OVERHEAD = common dso_local global i64 0, align 8
@VIRTIO_ID_CONSOLE = common dso_local global i8* null, align 8
@MLXBF_TMFIFO_VRING_RX = common dso_local global i64 0, align 8
@MLXBF_TMFIFO_TX_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, i32, i32*)* @mlxbf_tmfifo_rxtx_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_rxtx_header(%struct.mlxbf_tmfifo_vring* %0, %struct.vring_desc* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %6 = alloca %struct.vring_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlxbf_tmfifo*, align 8
  %10 = alloca %struct.virtio_net_config*, align 8
  %11 = alloca %struct.mlxbf_tmfifo_msg_hdr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %5, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %16 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %15, i32 0, i32 5
  %17 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %16, align 8
  store %struct.mlxbf_tmfifo* %17, %struct.mlxbf_tmfifo** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %99

20:                                               ; preds = %4
  %21 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %22 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MLXBF_TMFIFO_RX_DATA, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readq(i64 %25)
  %27 = bitcast %struct.mlxbf_tmfifo_msg_hdr* %11 to i32*
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %11, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %161

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %11, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** @VIRTIO_ID_NET, align 8
  %36 = icmp eq i8* %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load i8*, i8** @VIRTIO_ID_NET, align 8
  %39 = ptrtoint i8* %38 to i32
  store i32 %39, i32* %12, align 4
  store i32 4, i32* %13, align 4
  %40 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %41 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %40, i32 0, i32 2
  %42 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %42, i64 %44
  %46 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %45, align 8
  %47 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.virtio_net_config* %48, %struct.virtio_net_config** %10, align 8
  %49 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %11, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @ntohs(i64 %50)
  %52 = load %struct.virtio_net_config*, %struct.virtio_net_config** %10, align 8
  %53 = getelementptr inbounds %struct.virtio_net_config, %struct.virtio_net_config* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLXBF_TMFIFO_NET_L2_OVERHEAD, align 8
  %56 = add nsw i64 %54, %55
  %57 = icmp sgt i64 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  br label %161

59:                                               ; preds = %37
  br label %63

60:                                               ; preds = %32
  %61 = load i8*, i8** @VIRTIO_ID_CONSOLE, align 8
  %62 = ptrtoint i8* %61 to i32
  store i32 %62, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %66 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %71 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %70, i32 0, i32 2
  %72 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %72, i64 %74
  %76 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %75, align 8
  store %struct.mlxbf_tmfifo_vdev* %76, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %77 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %78 = icmp ne %struct.mlxbf_tmfifo_vdev* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %69
  br label %161

80:                                               ; preds = %69
  %81 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %82 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %83 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %82, i32 0, i32 4
  store %struct.vring_desc* %81, %struct.vring_desc** %83, align 8
  %84 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  %85 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %84, i32 0, i32 0
  %86 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %85, align 8
  %87 = load i64, i64* @MLXBF_TMFIFO_VRING_RX, align 8
  %88 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %86, i64 %87
  store %struct.mlxbf_tmfifo_vring* %88, %struct.mlxbf_tmfifo_vring** %5, align 8
  %89 = load i32*, i32** %8, align 8
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %80, %63
  %91 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %11, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i64 @ntohs(i64 %92)
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %93, %95
  %97 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %98 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %145

99:                                               ; preds = %4
  %100 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %101 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i8*, i8** @VIRTIO_ID_NET, align 8
  %106 = icmp eq i8* %104, %105
  %107 = zext i1 %106 to i64
  %108 = select i1 %106, i64 4, i64 0
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %111 = load %struct.vring_desc*, %struct.vring_desc** %6, align 8
  %112 = call i64 @mlxbf_tmfifo_get_pkt_len(%struct.mlxbf_tmfifo_vring* %110, %struct.vring_desc* %111)
  %113 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %114 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %113, i32 0, i32 2
  store i64 %112, i64* %114, align 8
  %115 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %116 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load i8*, i8** @VIRTIO_ID_NET, align 8
  %121 = icmp eq i8* %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %99
  %123 = load i8*, i8** @VIRTIO_ID_NET, align 8
  br label %126

124:                                              ; preds = %99
  %125 = load i8*, i8** @VIRTIO_ID_CONSOLE, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i8* [ %123, %122 ], [ %125, %124 ]
  %128 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %11, i32 0, i32 1
  store i8* %127, i8** %128, align 8
  %129 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %130 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = sub nsw i64 %131, %133
  %135 = call i64 @htons(i64 %134)
  %136 = getelementptr inbounds %struct.mlxbf_tmfifo_msg_hdr, %struct.mlxbf_tmfifo_msg_hdr* %11, i32 0, i32 0
  store i64 %135, i64* %136, align 8
  %137 = bitcast %struct.mlxbf_tmfifo_msg_hdr* %11 to i32*
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %140 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MLXBF_TMFIFO_TX_DATA, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @writeq(i32 %138, i64 %143)
  br label %145

145:                                              ; preds = %126, %90
  %146 = load i32, i32* %13, align 4
  %147 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %148 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  %149 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %150 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %153 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %152, i32 0, i32 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %5, align 8
  %155 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %9, align 8
  %156 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %155, i32 0, i32 0
  %157 = load %struct.mlxbf_tmfifo_vring**, %struct.mlxbf_tmfifo_vring*** %156, align 8
  %158 = load i32, i32* %7, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %157, i64 %159
  store %struct.mlxbf_tmfifo_vring* %154, %struct.mlxbf_tmfifo_vring** %160, align 8
  br label %161

161:                                              ; preds = %145, %79, %58, %31
  ret void
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @mlxbf_tmfifo_get_pkt_len(%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*) #1

declare dso_local i64 @htons(i64) #1

declare dso_local i32 @writeq(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
