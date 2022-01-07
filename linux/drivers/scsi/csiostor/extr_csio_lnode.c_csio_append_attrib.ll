; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_append_attrib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_append_attrib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_fdmi_attr_entry = type { i64, i8*, i8* }

@U16_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32, i8*, i64)* @csio_append_attrib to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csio_append_attrib(i32** %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_fdmi_attr_entry*, align 8
  store i32** %0, i32*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = bitcast i32* %12 to %struct.fc_fdmi_attr_entry*
  store %struct.fc_fdmi_attr_entry* %13, %struct.fc_fdmi_attr_entry** %10, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @U16_MAX, align 8
  %16 = icmp ugt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  br label %65

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i8* @htons(i32 %24)
  %26 = load %struct.fc_fdmi_attr_entry*, %struct.fc_fdmi_attr_entry** %10, align 8
  %27 = getelementptr inbounds %struct.fc_fdmi_attr_entry, %struct.fc_fdmi_attr_entry* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 3
  %32 = and i32 %31, -4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i8* @htons(i32 %33)
  %35 = load %struct.fc_fdmi_attr_entry*, %struct.fc_fdmi_attr_entry** %10, align 8
  %36 = getelementptr inbounds %struct.fc_fdmi_attr_entry, %struct.fc_fdmi_attr_entry* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load %struct.fc_fdmi_attr_entry*, %struct.fc_fdmi_attr_entry** %10, align 8
  %38 = getelementptr inbounds %struct.fc_fdmi_attr_entry, %struct.fc_fdmi_attr_entry* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @memcpy(i64 %39, i8* %40, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %8, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %21
  %48 = load %struct.fc_fdmi_attr_entry*, %struct.fc_fdmi_attr_entry** %10, align 8
  %49 = getelementptr inbounds %struct.fc_fdmi_attr_entry, %struct.fc_fdmi_attr_entry* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %8, align 8
  %56 = sub i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = call i32 @memset(i64 %52, i32 0, i32 %57)
  br label %59

59:                                               ; preds = %47, %21
  %60 = load i32, i32* %9, align 4
  %61 = load i32**, i32*** %5, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = sext i32 %60 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %61, align 8
  br label %65

65:                                               ; preds = %59, %20
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
