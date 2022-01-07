; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_invalidate_sub.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_invalidate_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { %struct.file* }
%struct.file = type { i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"invalidate_mapping_pages -> %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsg_lun*)* @invalidate_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_sub(%struct.fsg_lun* %0) #0 {
  %2 = alloca %struct.fsg_lun*, align 8
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  store %struct.fsg_lun* %0, %struct.fsg_lun** %2, align 8
  %6 = load %struct.fsg_lun*, %struct.fsg_lun** %2, align 8
  %7 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %6, i32 0, i32 0
  %8 = load %struct.file*, %struct.file** %7, align 8
  store %struct.file* %8, %struct.file** %3, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.inode* @file_inode(%struct.file* %9)
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @invalidate_mapping_pages(i32 %13, i32 0, i32 -1)
  store i64 %14, i64* %5, align 8
  %15 = load %struct.fsg_lun*, %struct.fsg_lun** %2, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @VLDBG(%struct.fsg_lun* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %16)
  ret void
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i64 @invalidate_mapping_pages(i32, i32, i32) #1

declare dso_local i32 @VLDBG(%struct.fsg_lun*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
