; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_wq_enet_desc.h_wq_enet_desc_dec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/fnic/extr_wq_enet_desc.h_wq_enet_desc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wq_enet_desc = type { i32, i32, i32, i32, i32 }

@WQ_ENET_LEN_MASK = common dso_local global i32 0, align 4
@WQ_ENET_MSS_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_MSS_MASK = common dso_local global i32 0, align 4
@WQ_ENET_LOOPBACK_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_HDRLEN_MASK = common dso_local global i32 0, align 4
@WQ_ENET_HDRLEN_BITS = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_OM_MASK = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_EOP_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_CQ_ENTRY_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT = common dso_local global i32 0, align 4
@WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wq_enet_desc*, i32*, i32*, i32*, i32*, i64*, i64*, i64*, i64*, i64*, i32*, i64*)* @wq_enet_desc_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wq_enet_desc_dec(%struct.wq_enet_desc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i64* %5, i64* %6, i64* %7, i64* %8, i64* %9, i32* %10, i64* %11) #0 {
  %13 = alloca %struct.wq_enet_desc*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64*, align 8
  store %struct.wq_enet_desc* %0, %struct.wq_enet_desc** %13, align 8
  store i32* %1, i32** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i64* %5, i64** %18, align 8
  store i64* %6, i64** %19, align 8
  store i64* %7, i64** %20, align 8
  store i64* %8, i64** %21, align 8
  store i64* %9, i64** %22, align 8
  store i32* %10, i32** %23, align 8
  store i64* %11, i64** %24, align 8
  %25 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %26 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @le64_to_cpu(i32 %27)
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  %30 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %31 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load i32, i32* @WQ_ENET_LEN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32*, i32** %15, align 8
  store i32 %35, i32* %36, align 4
  %37 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %38 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  %41 = load i32, i32* @WQ_ENET_MSS_SHIFT, align 4
  %42 = ashr i32 %40, %41
  %43 = load i32, i32* @WQ_ENET_MSS_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32*, i32** %16, align 8
  store i32 %44, i32* %45, align 4
  %46 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %47 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le16_to_cpu(i32 %48)
  %50 = load i32, i32* @WQ_ENET_LOOPBACK_SHIFT, align 4
  %51 = ashr i32 %49, %50
  %52 = and i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %24, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %56 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = load i32, i32* @WQ_ENET_HDRLEN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32*, i32** %17, align 8
  store i32 %60, i32* %61, align 4
  %62 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %63 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  %66 = load i32, i32* @WQ_ENET_HDRLEN_BITS, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32, i32* @WQ_ENET_FLAGS_OM_MASK, align 4
  %69 = and i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = load i64*, i64** %18, align 8
  store i64 %70, i64* %71, align 8
  %72 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %73 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  %76 = load i32, i32* @WQ_ENET_FLAGS_EOP_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 1
  %79 = sext i32 %78 to i64
  %80 = load i64*, i64** %19, align 8
  store i64 %79, i64* %80, align 8
  %81 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %82 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = load i32, i32* @WQ_ENET_FLAGS_CQ_ENTRY_SHIFT, align 4
  %86 = ashr i32 %84, %85
  %87 = and i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = load i64*, i64** %20, align 8
  store i64 %88, i64* %89, align 8
  %90 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %91 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @le16_to_cpu(i32 %92)
  %94 = load i32, i32* @WQ_ENET_FLAGS_FCOE_ENCAP_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = and i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = load i64*, i64** %21, align 8
  store i64 %97, i64* %98, align 8
  %99 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %100 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @le16_to_cpu(i32 %101)
  %103 = load i32, i32* @WQ_ENET_FLAGS_VLAN_TAG_INSERT_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = and i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = load i64*, i64** %22, align 8
  store i64 %106, i64* %107, align 8
  %108 = load %struct.wq_enet_desc*, %struct.wq_enet_desc** %13, align 8
  %109 = getelementptr inbounds %struct.wq_enet_desc, %struct.wq_enet_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  %112 = load i32*, i32** %23, align 8
  store i32 %111, i32* %112, align 4
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
