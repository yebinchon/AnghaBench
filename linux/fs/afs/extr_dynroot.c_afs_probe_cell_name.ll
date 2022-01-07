; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_probe_cell_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_probe_cell_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64 }
%struct.afs_cell = type { i32 }
%struct.afs_net = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"afsdb\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"srv=1\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@EDESTADDRREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*)* @afs_probe_cell_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_probe_cell_name(%struct.dentry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca %struct.afs_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = call %struct.afs_net* @afs_d2net(%struct.dentry* %9)
  store %struct.afs_net* %10, %struct.afs_net** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %3, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 1
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %63

30:                                               ; preds = %24
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, -1
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call %struct.afs_cell* @afs_lookup_cell_rcu(%struct.afs_net* %36, i8* %37, i64 %38)
  store %struct.afs_cell* %39, %struct.afs_cell** %4, align 8
  %40 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %41 = call i32 @IS_ERR(%struct.afs_cell* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %35
  %44 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %45 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %46 = call i32 @afs_put_cell(%struct.afs_net* %44, %struct.afs_cell* %45)
  store i32 0, i32* %2, align 4
  br label %63

47:                                               ; preds = %35
  %48 = load %struct.afs_net*, %struct.afs_net** %5, align 8
  %49 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @dns_query(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %51, i64 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null, i32 0)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @ENODATA, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i32, i32* @EDESTADDRREQ, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %47
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %43, %27
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.afs_net* @afs_d2net(%struct.dentry*) #1

declare dso_local %struct.afs_cell* @afs_lookup_cell_rcu(%struct.afs_net*, i8*, i64) #1

declare dso_local i32 @IS_ERR(%struct.afs_cell*) #1

declare dso_local i32 @afs_put_cell(%struct.afs_net*, %struct.afs_cell*) #1

declare dso_local i32 @dns_query(i32, i8*, i8*, i64, i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
