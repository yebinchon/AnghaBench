; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/xenfs/extr_xensyms.c_xensyms_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/xenfs/extr_xensyms.c_xensyms_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { i64 }
%struct.xensyms = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@xensyms_seq_ops = common dso_local global i32 0, align 4
@XEN_KSYM_NAME_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XENPF_get_symbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @xensyms_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xensyms_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.seq_file*, align 8
  %7 = alloca %struct.xensyms*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call i32 @seq_open_private(%struct.file* %9, i32* @xensyms_seq_ops, i32 40)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load %struct.seq_file*, %struct.seq_file** %17, align 8
  store %struct.seq_file* %18, %struct.seq_file** %6, align 8
  %19 = load %struct.seq_file*, %struct.seq_file** %6, align 8
  %20 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.xensyms*
  store %struct.xensyms* %22, %struct.xensyms** %7, align 8
  %23 = load i64, i64* @XEN_KSYM_NAME_LEN, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %26 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %28 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kzalloc(i64 %29, i32 %30)
  %32 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %33 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %35 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %15
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = load %struct.file*, %struct.file** %5, align 8
  %41 = call i32 @seq_release_private(%struct.inode* %39, %struct.file* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %67

44:                                               ; preds = %15
  %45 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %46 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %52 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @set_xen_guest_handle(i32 %50, i32 %53)
  %55 = load i32, i32* @XENPF_get_symbol, align 4
  %56 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %57 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 8
  %59 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %60 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.xensyms*, %struct.xensyms** %7, align 8
  %63 = getelementptr inbounds %struct.xensyms, %struct.xensyms* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i64 %61, i64* %66, align 8
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %44, %38, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @seq_open_private(%struct.file*, i32*, i32) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @seq_release_private(%struct.inode*, %struct.file*) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
