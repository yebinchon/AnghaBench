; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_update_dir_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_update_dir_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.chain_t = type { i32 }
%struct.file_dentry_t = type { i32, i64 }
%struct.dentry_t = type { i32 }

@DENTRY_SIZE = common dso_local global i32 0, align 4
@CS_DIR_ENTRY = common dso_local global i32 0, align 4
@CS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_dir_checksum(%struct.super_block* %0, %struct.chain_t* %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.chain_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.file_dentry_t*, align 8
  %12 = alloca %struct.dentry_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.chain_t* %1, %struct.chain_t** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %13, %struct.chain_t* %14, i32 %15, i32* %9)
  %17 = bitcast %struct.dentry_t* %16 to %struct.file_dentry_t*
  store %struct.file_dentry_t* %17, %struct.file_dentry_t** %11, align 8
  %18 = load %struct.file_dentry_t*, %struct.file_dentry_t** %11, align 8
  %19 = icmp ne %struct.file_dentry_t* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %74

21:                                               ; preds = %3
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @buf_lock(%struct.super_block* %22, i32 %23)
  %25 = load %struct.file_dentry_t*, %struct.file_dentry_t** %11, align 8
  %26 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load %struct.file_dentry_t*, %struct.file_dentry_t** %11, align 8
  %31 = bitcast %struct.file_dentry_t* %30 to i8*
  %32 = load i32, i32* @DENTRY_SIZE, align 4
  %33 = load i32, i32* @CS_DIR_ENTRY, align 4
  %34 = call i64 @calc_checksum_2byte(i8* %31, i32 %32, i64 0, i32 %33)
  store i64 %34, i64* %10, align 8
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %59, %21
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %35
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = load %struct.chain_t*, %struct.chain_t** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %42, %43
  %45 = call %struct.dentry_t* @get_entry_in_dir(%struct.super_block* %40, %struct.chain_t* %41, i32 %44, i32* null)
  store %struct.dentry_t* %45, %struct.dentry_t** %12, align 8
  %46 = load %struct.dentry_t*, %struct.dentry_t** %12, align 8
  %47 = icmp ne %struct.dentry_t* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %39
  %49 = load %struct.super_block*, %struct.super_block** %4, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @buf_unlock(%struct.super_block* %49, i32 %50)
  br label %74

52:                                               ; preds = %39
  %53 = load %struct.dentry_t*, %struct.dentry_t** %12, align 8
  %54 = bitcast %struct.dentry_t* %53 to i8*
  %55 = load i32, i32* @DENTRY_SIZE, align 4
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* @CS_DEFAULT, align 4
  %58 = call i64 @calc_checksum_2byte(i8* %54, i32 %55, i64 %56, i32 %57)
  store i64 %58, i64* %10, align 8
  br label %59

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  br label %35

62:                                               ; preds = %35
  %63 = load %struct.file_dentry_t*, %struct.file_dentry_t** %11, align 8
  %64 = getelementptr inbounds %struct.file_dentry_t, %struct.file_dentry_t* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @SET16_A(i32 %65, i64 %66)
  %68 = load %struct.super_block*, %struct.super_block** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @buf_modify(%struct.super_block* %68, i32 %69)
  %71 = load %struct.super_block*, %struct.super_block** %4, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @buf_unlock(%struct.super_block* %71, i32 %72)
  br label %74

74:                                               ; preds = %62, %48, %20
  ret void
}

declare dso_local %struct.dentry_t* @get_entry_in_dir(%struct.super_block*, %struct.chain_t*, i32, i32*) #1

declare dso_local i32 @buf_lock(%struct.super_block*, i32) #1

declare dso_local i64 @calc_checksum_2byte(i8*, i32, i64, i32) #1

declare dso_local i32 @buf_unlock(%struct.super_block*, i32) #1

declare dso_local i32 @SET16_A(i32, i64) #1

declare dso_local i32 @buf_modify(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
