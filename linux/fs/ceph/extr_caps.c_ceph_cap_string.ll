; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_cap_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_cap_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cap_str_lock = common dso_local global i32 0, align 4
@last_cap_str = common dso_local global i64 0, align 8
@MAX_CAP_STR = common dso_local global i64 0, align 8
@cap_str = common dso_local global i8** null, align 8
@CEPH_CAP_PIN = common dso_local global i32 0, align 4
@CEPH_CAP_SAUTH = common dso_local global i32 0, align 4
@CEPH_CAP_SLINK = common dso_local global i32 0, align 4
@CEPH_CAP_SXATTR = common dso_local global i32 0, align 4
@CEPH_CAP_SFILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ceph_cap_string(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = call i32 @spin_lock(i32* @cap_str_lock)
  %7 = load i64, i64* @last_cap_str, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* @last_cap_str, align 8
  %9 = trunc i64 %7 to i32
  store i32 %9, i32* %3, align 4
  %10 = load i64, i64* @last_cap_str, align 8
  %11 = load i64, i64* @MAX_CAP_STR, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i64 0, i64* @last_cap_str, align 8
  br label %14

14:                                               ; preds = %13, %1
  %15 = call i32 @spin_unlock(i32* @cap_str_lock)
  %16 = load i8**, i8*** @cap_str, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @CEPH_CAP_PIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %14
  %26 = load i8*, i8** %4, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %4, align 8
  store i8 112, i8* %26, align 1
  br label %28

28:                                               ; preds = %25, %14
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @CEPH_CAP_SAUTH, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 3
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 65, i8* %36, align 1
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i8* @gcap_string(i8* %38, i32 %39)
  store i8* %40, i8** %4, align 8
  br label %41

41:                                               ; preds = %35, %28
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @CEPH_CAP_SLINK, align 4
  %44 = ashr i32 %42, %43
  %45 = and i32 %44, 3
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i8*, i8** %4, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %4, align 8
  store i8 76, i8* %49, align 1
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i8* @gcap_string(i8* %51, i32 %52)
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %48, %41
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @CEPH_CAP_SXATTR, align 4
  %57 = ashr i32 %55, %56
  %58 = and i32 %57, 3
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 88, i8* %62, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i8* @gcap_string(i8* %64, i32 %65)
  store i8* %66, i8** %4, align 8
  br label %67

67:                                               ; preds = %61, %54
  %68 = load i32, i32* %2, align 4
  %69 = load i32, i32* @CEPH_CAP_SFILE, align 4
  %70 = ashr i32 %68, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %67
  %74 = load i8*, i8** %4, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %4, align 8
  store i8 70, i8* %74, align 1
  %76 = load i8*, i8** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i8* @gcap_string(i8* %76, i32 %77)
  store i8* %78, i8** %4, align 8
  br label %79

79:                                               ; preds = %73, %67
  %80 = load i8*, i8** %4, align 8
  %81 = load i8**, i8*** @cap_str, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %81, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = icmp eq i8* %80, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %79
  %88 = load i8*, i8** %4, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %4, align 8
  store i8 45, i8* %88, align 1
  br label %90

90:                                               ; preds = %87, %79
  %91 = load i8*, i8** %4, align 8
  store i8 0, i8* %91, align 1
  %92 = load i8**, i8*** @cap_str, align 8
  %93 = load i32, i32* %3, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  %96 = load i8*, i8** %95, align 8
  ret i8* %96
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i8* @gcap_string(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
