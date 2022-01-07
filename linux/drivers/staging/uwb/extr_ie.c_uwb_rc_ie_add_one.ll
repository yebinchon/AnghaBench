; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_rc_ie_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_ie.c_uwb_rc_ie_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { i64, %struct.uwb_rc_cmd_set_ie* }
%struct.uwb_rc_cmd_set_ie = type { i32, i8* }
%struct.uwb_ie_hdr = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uwb_rc*, %struct.uwb_ie_hdr*)* @uwb_rc_ie_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_rc_ie_add_one(%struct.uwb_rc* %0, %struct.uwb_ie_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_ie_hdr*, align 8
  %6 = alloca %struct.uwb_rc_cmd_set_ie*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.uwb_ie_hdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.uwb_rc* %0, %struct.uwb_rc** %4, align 8
  store %struct.uwb_ie_hdr* %1, %struct.uwb_ie_hdr** %5, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 1
  %17 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %16, align 8
  %18 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @le16_to_cpu(i32 %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %22 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = add i64 16, %24
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %10, align 8
  %27 = add i64 16, %26
  %28 = load i64, i64* %11, align 8
  %29 = add i64 %27, %28
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %32 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ugt i64 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %2
  %36 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %37 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %36, i32 0, i32 1
  %38 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.uwb_rc_cmd_set_ie* @krealloc(%struct.uwb_rc_cmd_set_ie* %38, i64 %39, i32 %40)
  store %struct.uwb_rc_cmd_set_ie* %41, %struct.uwb_rc_cmd_set_ie** %6, align 8
  %42 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %6, align 8
  %43 = icmp ne %struct.uwb_rc_cmd_set_ie* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %93

47:                                               ; preds = %35
  %48 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %6, align 8
  %49 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %50 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %49, i32 0, i32 1
  store %struct.uwb_rc_cmd_set_ie* %48, %struct.uwb_rc_cmd_set_ie** %50, align 8
  br label %51

51:                                               ; preds = %47, %2
  %52 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %53 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %52, i32 0, i32 1
  %54 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %53, align 8
  %55 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %7, align 8
  %57 = load i64, i64* %10, align 8
  store i64 %57, i64* %13, align 8
  br label %58

58:                                               ; preds = %73, %51
  %59 = load i8*, i8** %7, align 8
  store i8* %59, i8** %8, align 8
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* %14, align 8
  %61 = call %struct.uwb_ie_hdr* @uwb_ie_next(i8** %7, i64* %13)
  store %struct.uwb_ie_hdr* %61, %struct.uwb_ie_hdr** %9, align 8
  %62 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %63 = icmp ne %struct.uwb_ie_hdr* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %9, align 8
  %66 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %69 = getelementptr inbounds %struct.uwb_ie_hdr, %struct.uwb_ie_hdr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp sgt i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64, %58
  br label %74

73:                                               ; preds = %64
  br label %58

74:                                               ; preds = %72
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr i8, i8* %75, i64 %76
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %14, align 8
  %80 = call i32 @memmove(i8* %77, i8* %78, i64 %79)
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.uwb_ie_hdr*, %struct.uwb_ie_hdr** %5, align 8
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @memcpy(i8* %81, %struct.uwb_ie_hdr* %82, i64 %83)
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add i64 %85, %86
  %88 = call i32 @cpu_to_le16(i64 %87)
  %89 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %90 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %89, i32 0, i32 1
  %91 = load %struct.uwb_rc_cmd_set_ie*, %struct.uwb_rc_cmd_set_ie** %90, align 8
  %92 = getelementptr inbounds %struct.uwb_rc_cmd_set_ie, %struct.uwb_rc_cmd_set_ie* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %74, %44
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.uwb_rc_cmd_set_ie* @krealloc(%struct.uwb_rc_cmd_set_ie*, i64, i32) #1

declare dso_local %struct.uwb_ie_hdr* @uwb_ie_next(i8**, i64*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, %struct.uwb_ie_hdr*, i64) #1

declare dso_local i32 @cpu_to_le16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
