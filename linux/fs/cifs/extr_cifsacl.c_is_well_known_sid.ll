; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_is_well_known_sid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_is_well_known_sid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i32, i64, i64*, i64* }

@sid_unix_groups = common dso_local global %struct.cifs_sid zeroinitializer, align 8
@sid_unix_users = common dso_local global %struct.cifs_sid zeroinitializer, align 8
@sid_unix_NFS_groups = common dso_local global %struct.cifs_sid zeroinitializer, align 8
@sid_unix_NFS_users = common dso_local global %struct.cifs_sid zeroinitializer, align 8
@NUM_AUTHS = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"auth %d did not match\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Unix UID %d returned from SID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_sid*, i32*, i32)* @is_well_known_sid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_well_known_sid(%struct.cifs_sid* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cifs_sid*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cifs_sid*, align 8
  store %struct.cifs_sid* %0, %struct.cifs_sid** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %12 = icmp ne %struct.cifs_sid* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %147

17:                                               ; preds = %13
  %18 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %19 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 2
  br i1 %22, label %23, label %29

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store %struct.cifs_sid* @sid_unix_groups, %struct.cifs_sid** %10, align 8
  br label %28

27:                                               ; preds = %23
  store %struct.cifs_sid* @sid_unix_users, %struct.cifs_sid** %10, align 8
  br label %28

28:                                               ; preds = %27, %26
  br label %40

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store %struct.cifs_sid* @sid_unix_NFS_groups, %struct.cifs_sid** %10, align 8
  br label %37

36:                                               ; preds = %32
  store %struct.cifs_sid* @sid_unix_NFS_users, %struct.cifs_sid** %10, align 8
  br label %37

37:                                               ; preds = %36, %35
  br label %39

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %147

39:                                               ; preds = %37
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %42 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %45 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %147

49:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %75, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @NUM_AUTHS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %50
  %55 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %56 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %63 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %62, i32 0, i32 2
  %64 = load i64*, i64** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %61, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load i32, i32* @FYI, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @cifs_dbg(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %4, align 4
  br label %147

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %50

78:                                               ; preds = %50
  %79 = load i32, i32* %9, align 4
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %102

81:                                               ; preds = %78
  %82 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %83 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %88 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %87, i32 0, i32 3
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %147

94:                                               ; preds = %81
  %95 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %96 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %95, i32 0, i32 3
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @le32_to_cpu(i64 %99)
  %101 = load i32*, i32** %6, align 8
  store i32 %100, i32* %101, align 4
  br label %142

102:                                              ; preds = %78
  %103 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %104 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @le32_to_cpu(i64 %107)
  %109 = load i32*, i32** %6, align 8
  store i32 %108, i32* %109, align 4
  %110 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %111 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %110, i32 0, i32 3
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %116 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %114, %119
  br i1 %120, label %133, label %121

121:                                              ; preds = %102
  %122 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %123 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %122, i32 0, i32 3
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.cifs_sid*, %struct.cifs_sid** %10, align 8
  %128 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %127, i32 0, i32 3
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %126, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %121, %102
  store i32 0, i32* %4, align 4
  br label %147

134:                                              ; preds = %121
  %135 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %136 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %135, i32 0, i32 3
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 2
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @le32_to_cpu(i64 %139)
  %141 = load i32*, i32** %6, align 8
  store i32 %140, i32* %141, align 4
  br label %142

142:                                              ; preds = %134, %94
  %143 = load i32, i32* @FYI, align 4
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @cifs_dbg(i32 %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  store i32 1, i32* %4, align 4
  br label %147

147:                                              ; preds = %142, %133, %93, %70, %48, %38, %16
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @cifs_dbg(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
