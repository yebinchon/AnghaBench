; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_fill_common_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_readdir.c_cifs_fill_common_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_fattr = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.cifs_sb_info = type { i32, i32, i32, i32, i32 }

@ATTR_DIRECTORY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@ATTR_REPARSE = common dso_local global i32 0, align 4
@CIFS_FATTR_NEED_REVAL = common dso_local global i32 0, align 4
@CIFS_FATTR_UNKNOWN_NLINK = common dso_local global i32 0, align 4
@ATTR_READONLY = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@CIFS_MOUNT_CIFS_ACL = common dso_local global i32 0, align 4
@CIFS_MOUNT_UNX_EMUL = common dso_local global i32 0, align 4
@ATTR_SYSTEM = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@DT_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cifs_fattr*, %struct.cifs_sb_info*)* @cifs_fill_common_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_fill_common_info(%struct.cifs_fattr* %0, %struct.cifs_sb_info* %1) #0 {
  %3 = alloca %struct.cifs_fattr*, align 8
  %4 = alloca %struct.cifs_sb_info*, align 8
  store %struct.cifs_fattr* %0, %struct.cifs_fattr** %3, align 8
  store %struct.cifs_sb_info* %1, %struct.cifs_sb_info** %4, align 8
  %5 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %6 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %9 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %8, i32 0, i32 6
  store i32 %7, i32* %9, align 4
  %10 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %11 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %14 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 8
  %15 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %16 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ATTR_DIRECTORY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @S_IFDIR, align 4
  %23 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %24 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %28 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @DT_DIR, align 4
  %30 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %31 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* @S_IFREG, align 4
  %34 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %35 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %39 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @DT_REG, align 4
  %41 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %42 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %32, %21
  %44 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %45 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ATTR_REPARSE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %52 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %53 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load i32, i32* @CIFS_FATTR_UNKNOWN_NLINK, align 4
  %58 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %59 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %63 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ATTR_READONLY, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %56
  %69 = load i32, i32* @S_IWUGO, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %72 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %68, %56
  %76 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %77 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CIFS_MOUNT_CIFS_ACL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %75
  %83 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %84 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %85 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %75
  %89 = load %struct.cifs_sb_info*, %struct.cifs_sb_info** %4, align 8
  %90 = getelementptr inbounds %struct.cifs_sb_info, %struct.cifs_sb_info* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @CIFS_MOUNT_UNX_EMUL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %88
  %96 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %97 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @ATTR_SYSTEM, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %95
  %103 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %104 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load i32, i32* @S_IFMT, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %111 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load i32, i32* @S_IFIFO, align 4
  %115 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %116 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* @DT_FIFO, align 4
  %120 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %121 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  br label %128

122:                                              ; preds = %102
  %123 = load i32, i32* @CIFS_FATTR_NEED_REVAL, align 4
  %124 = load %struct.cifs_fattr*, %struct.cifs_fattr** %3, align 8
  %125 = getelementptr inbounds %struct.cifs_fattr, %struct.cifs_fattr* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %107
  br label %129

129:                                              ; preds = %128, %95, %88
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
