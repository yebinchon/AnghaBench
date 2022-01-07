; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_prot_verify_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_prot_verify_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.t10_pi_tuple = type { i32 }
%struct.sg_mapping_iter = type { i32, i32, %struct.t10_pi_tuple* }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@sdebug_sector_size = common dso_local global i64 0, align 8
@dix_writes = common dso_local global i32 0, align 4
@dif_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32, i32, i32)* @prot_verify_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prot_verify_write(%struct.scsi_cmnd* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.t10_pi_tuple*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sg_mapping_iter, align 8
  %17 = alloca %struct.sg_mapping_iter, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %13, align 4
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %20 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %19)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %25 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %24)
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %30 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %29)
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %31)
  %33 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %34 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %17, i32 %30, i64 %32, i32 %35)
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %38 = call i32 @scsi_sglist(%struct.scsi_cmnd* %37)
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %40 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %39)
  %41 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %42 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %16, i32 %38, i64 %40, i32 %43)
  br label %45

45:                                               ; preds = %114, %4
  %46 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %17)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %118

48:                                               ; preds = %45
  store i32 0, i32* %15, align 4
  %49 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %16)
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @WARN_ON(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i32 1, i32* %10, align 4
  br label %126

56:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %57

57:                                               ; preds = %109, %56
  %58 = load i32, i32* %14, align 4
  %59 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %17, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %114

62:                                               ; preds = %57
  %63 = load i32, i32* %15, align 4
  %64 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %16, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %63, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = call i64 @sg_miter_next(%struct.sg_mapping_iter* %16)
  %69 = icmp ne i64 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i64 @WARN_ON(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 1, i32* %10, align 4
  br label %126

75:                                               ; preds = %67
  store i32 0, i32* %15, align 4
  br label %76

76:                                               ; preds = %75, %62
  %77 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %17, i32 0, i32 2
  %78 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %78, i64 %80
  store %struct.t10_pi_tuple* %81, %struct.t10_pi_tuple** %11, align 8
  %82 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %16, i32 0, i32 2
  %83 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.t10_pi_tuple, %struct.t10_pi_tuple* %83, i64 %85
  %87 = bitcast %struct.t10_pi_tuple* %86 to i8*
  store i8* %87, i8** %12, align 8
  %88 = load %struct.t10_pi_tuple*, %struct.t10_pi_tuple** %11, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @dif_verify(%struct.t10_pi_tuple* %88, i8* %89, i32 %90, i32 %91)
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %76
  %96 = load i8*, i8** %12, align 8
  %97 = load i64, i64* @sdebug_sector_size, align 8
  %98 = call i32 @dump_sector(i8* %96, i64 %97)
  br label %126

99:                                               ; preds = %76
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %13, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = load i64, i64* @sdebug_sector_size, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %15, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %111, 4
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %14, align 4
  br label %57

114:                                              ; preds = %57
  %115 = load i32, i32* %15, align 4
  %116 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %16, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %16)
  br label %45

118:                                              ; preds = %45
  %119 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %17)
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @dif_copy_prot(%struct.scsi_cmnd* %120, i32 %121, i32 %122, i32 0)
  %124 = load i32, i32* @dix_writes, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* @dix_writes, align 4
  store i32 0, i32* %5, align 4
  br label %132

126:                                              ; preds = %95, %74, %55
  %127 = load i32, i32* @dif_errors, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @dif_errors, align 4
  %129 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %16)
  %130 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %17)
  %131 = load i32, i32* %10, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %126, %118
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i64, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @dif_verify(%struct.t10_pi_tuple*, i8*, i32, i32) #1

declare dso_local i32 @dump_sector(i8*, i64) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @dif_copy_prot(%struct.scsi_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
