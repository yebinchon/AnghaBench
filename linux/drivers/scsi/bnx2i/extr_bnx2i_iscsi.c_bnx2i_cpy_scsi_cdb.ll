; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_cpy_scsi_cdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_iscsi.c_bnx2i_cpy_scsi_cdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2i_cmd = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64, i8** }
%struct.TYPE_5__ = type { i32 }
%struct.scsi_lun = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*, %struct.bnx2i_cmd*)* @bnx2i_cpy_scsi_cdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2i_cpy_scsi_cdb(%struct.scsi_cmnd* %0, %struct.bnx2i_cmd* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.bnx2i_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [2 x i32], align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store %struct.bnx2i_cmd* %1, %struct.bnx2i_cmd** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %16 = bitcast i32* %15 to %struct.scsi_lun*
  %17 = call i32 @int_to_scsilun(i32 %14, %struct.scsi_lun* %16)
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @be32_to_cpu(i32 %19)
  %21 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i8**, i8*** %23, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  store i8* %20, i8** %25, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @be32_to_cpu(i32 %27)
  %29 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  store i8* %28, i8** %33, align 8
  %34 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %6, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i64*
  store i64* %45, i64** %7, align 8
  %46 = load %struct.bnx2i_cmd*, %struct.bnx2i_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.bnx2i_cmd, %struct.bnx2i_cmd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %55, %2
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %52, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load i64*, i64** %7, align 8
  %57 = bitcast i64* %56 to i8*
  %58 = call i32 @memcpy(i32* %5, i8* %57, i32 4)
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @cpu_to_be32(i32 %59)
  %61 = load i32*, i32** %8, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i64*, i64** %7, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 4
  store i64* %63, i64** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %8, align 8
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 3
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load i64*, i64** %7, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  %79 = load i64, i64* %78, align 8
  %80 = trunc i64 %79 to i32
  %81 = shl i32 %80, 8
  %82 = or i32 %76, %81
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @cpu_to_be32(i32 %83)
  %85 = load i32*, i32** %8, align 8
  store i32 %84, i32* %85, align 4
  br label %86

86:                                               ; preds = %72, %66
  ret void
}

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
