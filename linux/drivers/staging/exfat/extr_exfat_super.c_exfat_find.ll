; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.qstr = type { i64, i64 }
%struct.file_id_t = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.qstr*, %struct.file_id_t*)* @exfat_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_find(%struct.inode* %0, %struct.qstr* %1, %struct.file_id_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.file_id_t*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.file_id_t* %2, %struct.file_id_t** %7, align 8
  %9 = load %struct.qstr*, %struct.qstr** %6, align 8
  %10 = getelementptr inbounds %struct.qstr, %struct.qstr* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = load %struct.qstr*, %struct.qstr** %6, align 8
  %19 = getelementptr inbounds %struct.qstr, %struct.qstr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load %struct.file_id_t*, %struct.file_id_t** %7, align 8
  %23 = call i32 @ffsLookupFile(%struct.inode* %17, i32* %21, %struct.file_id_t* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @ffsLookupFile(%struct.inode*, i32*, %struct.file_id_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
