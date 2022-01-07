; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_gcap_string.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_gcap_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CEPH_CAP_GSHARED = common dso_local global i32 0, align 4
@CEPH_CAP_GEXCL = common dso_local global i32 0, align 4
@CEPH_CAP_GCACHE = common dso_local global i32 0, align 4
@CEPH_CAP_GRD = common dso_local global i32 0, align 4
@CEPH_CAP_GWR = common dso_local global i32 0, align 4
@CEPH_CAP_GBUFFER = common dso_local global i32 0, align 4
@CEPH_CAP_GWREXTEND = common dso_local global i32 0, align 4
@CEPH_CAP_GLAZYIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32)* @gcap_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @gcap_string(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CEPH_CAP_GSHARED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %3, align 8
  store i8 115, i8* %10, align 1
  br label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @CEPH_CAP_GEXCL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %3, align 8
  store i8 120, i8* %18, align 1
  br label %20

20:                                               ; preds = %17, %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @CEPH_CAP_GCACHE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %3, align 8
  store i8 99, i8* %26, align 1
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @CEPH_CAP_GRD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %3, align 8
  store i8 114, i8* %34, align 1
  br label %36

36:                                               ; preds = %33, %28
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @CEPH_CAP_GWR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i8*, i8** %3, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %3, align 8
  store i8 119, i8* %42, align 1
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @CEPH_CAP_GBUFFER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %3, align 8
  store i8 98, i8* %50, align 1
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @CEPH_CAP_GWREXTEND, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i8*, i8** %3, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %3, align 8
  store i8 97, i8* %58, align 1
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @CEPH_CAP_GLAZYIO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %3, align 8
  %67 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %67, i8** %3, align 8
  store i8 108, i8* %66, align 1
  br label %68

68:                                               ; preds = %65, %60
  %69 = load i8*, i8** %3, align 8
  ret i8* %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
