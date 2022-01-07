; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_do_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_xen-scsifront.c_scsifront_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsifrnt_info = type { i32, %struct.vscsiif_front_ring, %struct.vscsifrnt_shadow** }
%struct.vscsiif_front_ring = type { i32 }
%struct.vscsifrnt_shadow = type { i64, i32, i32*, i32, i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i64, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.vscsiif_request = type { i64, i32, i64, i32, i32*, i64, i32, i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@VSCSIIF_MAX_REQS = common dso_local global i64 0, align 8
@VSCSIIF_MAX_COMMAND_SIZE = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@VSCSIIF_SG_GRANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsifrnt_info*, %struct.vscsifrnt_shadow*)* @scsifront_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsifront_do_request(%struct.vscsifrnt_info* %0, %struct.vscsifrnt_shadow* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vscsifrnt_info*, align 8
  %5 = alloca %struct.vscsifrnt_shadow*, align 8
  %6 = alloca %struct.vscsiif_front_ring*, align 8
  %7 = alloca %struct.vscsiif_request*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vscsifrnt_info* %0, %struct.vscsifrnt_info** %4, align 8
  store %struct.vscsifrnt_shadow* %1, %struct.vscsifrnt_shadow** %5, align 8
  %12 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %13 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %12, i32 0, i32 1
  store %struct.vscsiif_front_ring* %13, %struct.vscsiif_front_ring** %6, align 8
  %14 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %15 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %14, i32 0, i32 5
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %15, align 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %8, align 8
  %17 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %18 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %17, i32 0, i32 1
  %19 = call i64 @RING_FULL(%struct.vscsiif_front_ring* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %166

24:                                               ; preds = %2
  %25 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %26 = call i64 @scsifront_get_rqid(%struct.vscsifrnt_info* %25)
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @VSCSIIF_MAX_REQS, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %166

33:                                               ; preds = %24
  %34 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %35 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %36 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %35, i32 0, i32 2
  %37 = load %struct.vscsifrnt_shadow**, %struct.vscsifrnt_shadow*** %36, align 8
  %38 = load i64, i64* %9, align 8
  %39 = getelementptr inbounds %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %37, i64 %38
  store %struct.vscsifrnt_shadow* %34, %struct.vscsifrnt_shadow** %39, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %42 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %44 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %43, i32 0, i32 1
  %45 = load %struct.vscsiif_front_ring*, %struct.vscsiif_front_ring** %6, align 8
  %46 = getelementptr inbounds %struct.vscsiif_front_ring, %struct.vscsiif_front_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.vscsiif_request* @RING_GET_REQUEST(%struct.vscsiif_front_ring* %44, i32 %47)
  store %struct.vscsiif_request* %48, %struct.vscsiif_request** %7, align 8
  %49 = load %struct.vscsiif_front_ring*, %struct.vscsiif_front_ring** %6, align 8
  %50 = getelementptr inbounds %struct.vscsiif_front_ring, %struct.vscsiif_front_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %55 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %57 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %60 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %59, i32 0, i32 11
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %62 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %65 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %67 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %70 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %77 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %76, i32 0, i32 9
  store i32 %75, i32* %77, align 4
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %84 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %83, i32 0, i32 8
  store i32 %82, i32* %84, align 8
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %91 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %96 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %95, i32 0, i32 2
  store i64 %94, i64* %96, align 8
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VSCSIIF_MAX_COMMAND_SIZE, align 8
  %101 = icmp sgt i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %105 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %104, i32 0, i32 6
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %108 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @memcpy(i32 %106, i32 %109, i64 %112)
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %115 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %118 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 1
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @HZ, align 4
  %125 = sdiv i32 %123, %124
  %126 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %127 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %151, %33
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %131 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @VSCSIIF_SG_GRANT, align 4
  %134 = xor i32 %133, -1
  %135 = and i32 %132, %134
  %136 = icmp slt i32 %129, %135
  br i1 %136, label %137, label %154

137:                                              ; preds = %128
  %138 = load %struct.vscsifrnt_shadow*, %struct.vscsifrnt_shadow** %5, align 8
  %139 = getelementptr inbounds %struct.vscsifrnt_shadow, %struct.vscsifrnt_shadow* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.vscsiif_request*, %struct.vscsiif_request** %7, align 8
  %146 = getelementptr inbounds %struct.vscsiif_request, %struct.vscsiif_request* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %144, i32* %150, align 4
  br label %151

151:                                              ; preds = %137
  %152 = load i32, i32* %10, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %10, align 4
  br label %128

154:                                              ; preds = %128
  %155 = load %struct.vscsiif_front_ring*, %struct.vscsiif_front_ring** %6, align 8
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.vscsiif_front_ring* %155, i32 %156)
  %158 = load i32, i32* %11, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %154
  %161 = load %struct.vscsifrnt_info*, %struct.vscsifrnt_info** %4, align 8
  %162 = getelementptr inbounds %struct.vscsifrnt_info, %struct.vscsifrnt_info* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @notify_remote_via_irq(i32 %163)
  br label %165

165:                                              ; preds = %160, %154
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %30, %21
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local i64 @RING_FULL(%struct.vscsiif_front_ring*) #1

declare dso_local i64 @scsifront_get_rqid(%struct.vscsifrnt_info*) #1

declare dso_local %struct.vscsiif_request* @RING_GET_REQUEST(%struct.vscsiif_front_ring*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @RING_PUSH_REQUESTS_AND_CHECK_NOTIFY(%struct.vscsiif_front_ring*, i32) #1

declare dso_local i32 @notify_remote_via_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
