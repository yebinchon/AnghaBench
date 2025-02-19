; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_setup_init_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_setup_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.zfcp_qdio = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }

@QDIO_ZFCP_QFMT = common dso_local global i32 0, align 4
@QIB_RFLAGS_ENABLE_DATA_DIV = common dso_local global i32 0, align 4
@enable_multibuffer = common dso_local global i64 0, align 8
@QDR_AC_MULTI_BUFFER_ENABLE = common dso_local global i32 0, align 4
@zfcp_qdio_int_resp = common dso_local global i32 0, align 4
@zfcp_qdio_int_req = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i64 0, align 8
@ZFCP_QDIO_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_initialize*, %struct.zfcp_qdio*)* @zfcp_qdio_setup_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_setup_init_data(%struct.qdio_initialize* %0, %struct.zfcp_qdio* %1) #0 {
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  store %struct.zfcp_qdio* %1, %struct.zfcp_qdio** %4, align 8
  %5 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %6 = call i32 @memset(%struct.qdio_initialize* %5, i32 0, i32 72)
  %7 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %8 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %13 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %12, i32 0, i32 11
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %13, align 8
  %14 = load i32, i32* @QDIO_ZFCP_QFMT, align 4
  %15 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %16 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 8
  %17 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %18 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %21 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %20, i32 0, i32 11
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @dev_name(i32* %23)
  %25 = call i32 @memcpy(i32 %19, i32 %24, i32 8)
  %26 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %27 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ASCEBC(i32 %28, i32 8)
  %30 = load i32, i32* @QIB_RFLAGS_ENABLE_DATA_DIV, align 4
  %31 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %32 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @enable_multibuffer, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @QDR_AC_MULTI_BUFFER_ENABLE, align 4
  %37 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %38 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %45 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @zfcp_qdio_int_resp, align 4
  %47 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %48 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @zfcp_qdio_int_req, align 4
  %50 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %51 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %53 = ptrtoint %struct.zfcp_qdio* %52 to i64
  %54 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %55 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %60 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %62 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %65 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* @QDIO_MAX_BUFFERS_PER_Q, align 8
  %67 = load i32, i32* @ZFCP_QDIO_MAX_SBALS_PER_REQ, align 4
  %68 = mul nsw i32 %67, 2
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %72 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %71, i32 0, i32 3
  store i64 %70, i64* %72, align 8
  ret void
}

declare dso_local i32 @memset(%struct.qdio_initialize*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
