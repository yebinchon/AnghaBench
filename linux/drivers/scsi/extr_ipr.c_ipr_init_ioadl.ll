; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_init_ioadl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_init_ioadl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { %struct.ipr_ioadl64_desc*, %struct.ipr_ioadl_desc* }
%struct.ipr_ioadl64_desc = type { i32, i8*, i8* }
%struct.ipr_ioadl_desc = type { i8*, i8* }

@IPR_IOADL_FLAGS_READ_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, i32, i32, i32)* @ipr_init_ioadl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_init_ioadl(%struct.ipr_cmnd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipr_cmnd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipr_ioadl_desc*, align 8
  %10 = alloca %struct.ipr_ioadl64_desc*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load %struct.ipr_ioadl_desc*, %struct.ipr_ioadl_desc** %13, align 8
  store %struct.ipr_ioadl_desc* %14, %struct.ipr_ioadl_desc** %9, align 8
  %15 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %16 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ipr_ioadl64_desc*, %struct.ipr_ioadl64_desc** %17, align 8
  store %struct.ipr_ioadl64_desc* %18, %struct.ipr_ioadl64_desc** %10, align 8
  %19 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %20 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @cpu_to_be32(i32 %28)
  %30 = load %struct.ipr_ioadl64_desc*, %struct.ipr_ioadl64_desc** %10, align 8
  %31 = getelementptr inbounds %struct.ipr_ioadl64_desc, %struct.ipr_ioadl64_desc* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i8* @cpu_to_be32(i32 %32)
  %34 = load %struct.ipr_ioadl64_desc*, %struct.ipr_ioadl64_desc** %10, align 8
  %35 = getelementptr inbounds %struct.ipr_ioadl64_desc, %struct.ipr_ioadl64_desc* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @cpu_to_be64(i32 %36)
  %38 = load %struct.ipr_ioadl64_desc*, %struct.ipr_ioadl64_desc** %10, align 8
  %39 = getelementptr inbounds %struct.ipr_ioadl64_desc, %struct.ipr_ioadl64_desc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = call i8* @cpu_to_be32(i32 24)
  %41 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %42 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %47 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  br label %84

49:                                               ; preds = %4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %50, %51
  %53 = call i8* @cpu_to_be32(i32 %52)
  %54 = load %struct.ipr_ioadl_desc*, %struct.ipr_ioadl_desc** %9, align 8
  %55 = getelementptr inbounds %struct.ipr_ioadl_desc, %struct.ipr_ioadl_desc* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %struct.ipr_ioadl_desc*, %struct.ipr_ioadl_desc** %9, align 8
  %59 = getelementptr inbounds %struct.ipr_ioadl_desc, %struct.ipr_ioadl_desc* %58, i32 0, i32 0
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @IPR_IOADL_FLAGS_READ_LAST, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %49
  %64 = call i8* @cpu_to_be32(i32 16)
  %65 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %66 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  store i8* %64, i8** %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %71 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i8* %69, i8** %72, align 8
  br label %83

73:                                               ; preds = %49
  %74 = call i8* @cpu_to_be32(i32 16)
  %75 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %76 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = call i8* @cpu_to_be32(i32 %78)
  %80 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %5, align 8
  %81 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store i8* %79, i8** %82, align 8
  br label %83

83:                                               ; preds = %73, %63
  br label %84

84:                                               ; preds = %83, %27
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
