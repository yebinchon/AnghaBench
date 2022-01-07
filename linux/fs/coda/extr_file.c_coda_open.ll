; ModuleID = '/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/coda/extr_file.c_coda_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i16, %struct.coda_file_info* }
%struct.coda_file_info = type { i32, %struct.file*, i64, i32 }

@O_EXCL = common dso_local global i16 0, align 2
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@CODA_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coda_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.coda_file_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.file* null, %struct.file** %6, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @O_EXCL, align 2
  %16 = zext i16 %15 to i32
  %17 = xor i32 %16, -1
  %18 = and i32 %14, %17
  %19 = trunc i32 %18 to i16
  store i16 %19, i16* %8, align 2
  %20 = load i16, i16* %8, align 2
  %21 = call zeroext i16 @coda_flags_to_cflags(i16 zeroext %20)
  store i16 %21, i16* %9, align 2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.coda_file_info* @kmalloc(i32 32, i32 %22)
  store %struct.coda_file_info* %23, %struct.coda_file_info** %10, align 8
  %24 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %25 = icmp ne %struct.coda_file_info* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %83

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = call i32 @coda_i2f(%struct.inode* %33)
  %35 = load i16, i16* %9, align 2
  %36 = call i32 @venus_open(i32 %32, i32 %34, i16 zeroext %35, %struct.file** %6)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.file*, %struct.file** %6, align 8
  %38 = icmp ne %struct.file* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %29
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %47 = call i32 @kfree(%struct.coda_file_info* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %83

49:                                               ; preds = %42
  %50 = load %struct.file*, %struct.file** %5, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 0
  %52 = load i16, i16* %51, align 8
  %53 = zext i16 %52 to i32
  %54 = load i32, i32* @O_APPEND, align 4
  %55 = load i32, i32* @O_SYNC, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = load %struct.file*, %struct.file** %6, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load i16, i16* %59, align 8
  %61 = zext i16 %60 to i32
  %62 = or i32 %61, %57
  %63 = trunc i32 %62 to i16
  store i16 %63, i16* %59, align 8
  %64 = load i32, i32* @CODA_MAGIC, align 4
  %65 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %66 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %68 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load %struct.file*, %struct.file** %6, align 8
  %70 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %71 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %70, i32 0, i32 1
  store %struct.file* %69, %struct.file** %71, align 8
  %72 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %73 = getelementptr inbounds %struct.coda_file_info, %struct.coda_file_info* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.file*, %struct.file** %5, align 8
  %75 = getelementptr inbounds %struct.file, %struct.file* %74, i32 0, i32 1
  %76 = load %struct.coda_file_info*, %struct.coda_file_info** %75, align 8
  %77 = icmp ne %struct.coda_file_info* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i32 @BUG_ON(i32 %78)
  %80 = load %struct.coda_file_info*, %struct.coda_file_info** %10, align 8
  %81 = load %struct.file*, %struct.file** %5, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 1
  store %struct.coda_file_info* %80, %struct.coda_file_info** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %49, %45, %26
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local zeroext i16 @coda_flags_to_cflags(i16 zeroext) #1

declare dso_local %struct.coda_file_info* @kmalloc(i32, i32) #1

declare dso_local i32 @venus_open(i32, i32, i16 zeroext, %struct.file**) #1

declare dso_local i32 @coda_i2f(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.coda_file_info*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
