; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_set_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_esas2r_nvram_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_sas_nvram = type { i32* }
%struct.esas2r_adapter = type { %struct.TYPE_4__*, i32, %struct.esas2r_sas_nvram* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@AF_NVR_VALID = common dso_local global i32 0, align 4
@default_sas_nvram = common dso_local global %struct.esas2r_sas_nvram zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @esas2r_nvram_set_defaults(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca %struct.esas2r_adapter*, align 8
  %3 = alloca %struct.esas2r_sas_nvram*, align 8
  %4 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %2, align 8
  %5 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %5, i32 0, i32 2
  %7 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %6, align 8
  store %struct.esas2r_sas_nvram* %7, %struct.esas2r_sas_nvram** %3, align 8
  %8 = load i32, i32* @jiffies, align 4
  %9 = call i32 @jiffies_to_msecs(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @AF_NVR_VALID, align 4
  %11 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %11, i32 0, i32 1
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %15 = bitcast %struct.esas2r_sas_nvram* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 bitcast (%struct.esas2r_sas_nvram* @default_sas_nvram to i8*), i64 8, i1 false)
  %16 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %17 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 3
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, 15
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @LOWORD(i32 %22)
  %24 = call i32 @HIBYTE(i32 %23)
  %25 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %26 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 4
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @LOWORD(i32 %29)
  %31 = call i32 @LOBYTE(i32 %30)
  %32 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %33 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  store i32 %31, i32* %35, align 4
  %36 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %44 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 6
  store i32 %42, i32* %46, align 4
  %47 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.esas2r_sas_nvram*, %struct.esas2r_sas_nvram** %3, align 8
  %53 = getelementptr inbounds %struct.esas2r_sas_nvram, %struct.esas2r_sas_nvram* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  store i32 %51, i32* %55, align 4
  ret void
}

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @HIBYTE(i32) #1

declare dso_local i32 @LOWORD(i32) #1

declare dso_local i32 @LOBYTE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
