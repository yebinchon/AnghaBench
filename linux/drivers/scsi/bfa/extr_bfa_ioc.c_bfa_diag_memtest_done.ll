; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_diag_memtest_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_diag_memtest_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_diag_s = type { i64, i32, i32, i32 (i32, i32)*, i64, %struct.bfa_diag_memtest_result*, %struct.bfa_ioc_s* }
%struct.bfa_diag_memtest_result = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.bfa_ioc_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@BFI_BOOT_MEMTEST_RES_ADDR = common dso_local global i32 0, align 4
@BFI_BOOT_MEMTEST_RES_SIG = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_STATUS_MEMTEST_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_diag_memtest_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_diag_memtest_done(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_diag_s*, align 8
  %4 = alloca %struct.bfa_ioc_s*, align 8
  %5 = alloca %struct.bfa_diag_memtest_result*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.bfa_diag_s*
  store %struct.bfa_diag_s* %11, %struct.bfa_diag_s** %3, align 8
  %12 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %12, i32 0, i32 6
  %14 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %13, align 8
  store %struct.bfa_ioc_s* %14, %struct.bfa_ioc_s** %4, align 8
  %15 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %15, i32 0, i32 5
  %17 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %16, align 8
  store %struct.bfa_diag_memtest_result* %17, %struct.bfa_diag_memtest_result** %5, align 8
  %18 = load i32, i32* @BFI_BOOT_MEMTEST_RES_ADDR, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @PSS_SMEM_PGNUM(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @PSS_SMEM_PGOFF(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel(i32 %27, i32 %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %53, %1
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 14
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %39 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @bfa_mem_read(i32 %41, i32 %42)
  %44 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %45 = bitcast %struct.bfa_diag_memtest_result* %44 to i32*
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %43, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %50, 4
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %37
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %4, align 8
  %58 = call i32 @bfa_ioc_reset_fwstate(%struct.bfa_ioc_s* %57)
  %59 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %60 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i8* @swab32(i64 %61)
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %65 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %67 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %68 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @bfa_trc(%struct.bfa_diag_s* %66, i64 %69)
  %71 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BFI_BOOT_MEMTEST_RES_SIG, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %56
  %77 = load i32, i32* @BFA_STATUS_OK, align 4
  %78 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %79 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  br label %156

80:                                               ; preds = %56
  %81 = load i32, i32* @BFA_STATUS_MEMTEST_FAILED, align 4
  %82 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %83 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %85 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @swab32(i64 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %90 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %92 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @swab32(i64 %93)
  %95 = ptrtoint i8* %94 to i64
  %96 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %97 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %99 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = call i8* @swab32(i64 %100)
  %102 = ptrtoint i8* %101 to i64
  %103 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %104 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %103, i32 0, i32 3
  store i64 %102, i64* %104, align 8
  %105 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %106 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @swab32(i64 %107)
  %109 = ptrtoint i8* %108 to i64
  %110 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %111 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %110, i32 0, i32 4
  store i64 %109, i64* %111, align 8
  %112 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %113 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %112, i32 0, i32 5
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @swab32(i64 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %118 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %117, i32 0, i32 5
  store i64 %116, i64* %118, align 8
  %119 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %120 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %119, i32 0, i32 6
  %121 = load i64, i64* %120, align 8
  %122 = call i8* @swab32(i64 %121)
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %125 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %124, i32 0, i32 6
  store i64 %123, i64* %125, align 8
  %126 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %127 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %128 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @bfa_trc(%struct.bfa_diag_s* %126, i64 %129)
  %131 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %132 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %133 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @bfa_trc(%struct.bfa_diag_s* %131, i64 %134)
  %136 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %137 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %138 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @bfa_trc(%struct.bfa_diag_s* %136, i64 %139)
  %141 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %142 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %143 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @bfa_trc(%struct.bfa_diag_s* %141, i64 %144)
  %146 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %147 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %148 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @bfa_trc(%struct.bfa_diag_s* %146, i64 %149)
  %151 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %152 = load %struct.bfa_diag_memtest_result*, %struct.bfa_diag_memtest_result** %5, align 8
  %153 = getelementptr inbounds %struct.bfa_diag_memtest_result, %struct.bfa_diag_memtest_result* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @bfa_trc(%struct.bfa_diag_s* %151, i64 %154)
  br label %156

156:                                              ; preds = %80, %76
  %157 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %158 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %157, i32 0, i32 4
  store i64 0, i64* %158, align 8
  %159 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %160 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %159, i32 0, i32 3
  %161 = load i32 (i32, i32)*, i32 (i32, i32)** %160, align 8
  %162 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %163 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %166 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 %161(i32 %164, i32 %167)
  %169 = load %struct.bfa_diag_s*, %struct.bfa_diag_s** %3, align 8
  %170 = getelementptr inbounds %struct.bfa_diag_s, %struct.bfa_diag_s* %169, i32 0, i32 0
  store i64 0, i64* %170, align 8
  ret void
}

declare dso_local i32 @PSS_SMEM_PGNUM(i32, i32) #1

declare dso_local i32 @PSS_SMEM_PGOFF(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_mem_read(i32, i32) #1

declare dso_local i32 @bfa_ioc_reset_fwstate(%struct.bfa_ioc_s*) #1

declare dso_local i8* @swab32(i64) #1

declare dso_local i32 @bfa_trc(%struct.bfa_diag_s*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
