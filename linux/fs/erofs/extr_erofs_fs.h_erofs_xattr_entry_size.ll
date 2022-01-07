; ModuleID = '/home/carl/AnghaBench/linux/fs/erofs/extr_erofs_fs.h_erofs_xattr_entry_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/erofs/extr_erofs_fs.h_erofs_xattr_entry_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.erofs_xattr_entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.erofs_xattr_entry*)* @erofs_xattr_entry_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erofs_xattr_entry_size(%struct.erofs_xattr_entry* %0) #0 {
  %2 = alloca %struct.erofs_xattr_entry*, align 8
  store %struct.erofs_xattr_entry* %0, %struct.erofs_xattr_entry** %2, align 8
  %3 = load %struct.erofs_xattr_entry*, %struct.erofs_xattr_entry** %2, align 8
  %4 = getelementptr inbounds %struct.erofs_xattr_entry, %struct.erofs_xattr_entry* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = add i64 16, %5
  %7 = load %struct.erofs_xattr_entry*, %struct.erofs_xattr_entry** %2, align 8
  %8 = getelementptr inbounds %struct.erofs_xattr_entry, %struct.erofs_xattr_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @le16_to_cpu(i32 %9)
  %11 = add i64 %6, %10
  %12 = call i32 @EROFS_XATTR_ALIGN(i64 %11)
  ret i32 %12
}

declare dso_local i32 @EROFS_XATTR_ALIGN(i64) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
