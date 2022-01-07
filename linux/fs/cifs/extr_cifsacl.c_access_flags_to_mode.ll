; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_access_flags_to_mode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_access_flags_to_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACCESS_DENIED = common dso_local global i32 0, align 4
@GENERIC_ALL = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@GENERIC_WRITE = common dso_local global i32 0, align 4
@FILE_WRITE_RIGHTS = common dso_local global i32 0, align 4
@S_IWUGO = common dso_local global i32 0, align 4
@GENERIC_READ = common dso_local global i32 0, align 4
@FILE_READ_RIGHTS = common dso_local global i32 0, align 4
@S_IRUGO = common dso_local global i32 0, align 4
@GENERIC_EXECUTE = common dso_local global i32 0, align 4
@FILE_EXEC_RIGHTS = common dso_local global i32 0, align 4
@S_IXUGO = common dso_local global i32 0, align 4
@ACCESS_ALLOWED = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"unknown access control type %d\0A\00", align 1
@NOISY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"all perms\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"access flags 0x%x mode now 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @access_flags_to_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @access_flags_to_mode(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @ACCESS_DENIED, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @GENERIC_ALL, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load i32, i32* @S_IRWXUGO, align 4
  %22 = xor i32 %21, -1
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %15
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @GENERIC_WRITE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %31, %26
  %38 = load i32, i32* @S_IWUGO, align 4
  %39 = xor i32 %38, -1
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @GENERIC_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %48, %43
  %55 = load i32, i32* @S_IRUGO, align 4
  %56 = xor i32 %55, -1
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %56
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %48
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @GENERIC_EXECUTE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %65, %60
  %72 = load i32, i32* @S_IXUGO, align 4
  %73 = xor i32 %72, -1
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %73
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %65
  br label %165

78:                                               ; preds = %4
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @ACCESS_ALLOWED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* @VFS, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %83, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %84)
  br label %165

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @GENERIC_ALL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %102

92:                                               ; preds = %87
  %93 = load i32, i32* @S_IRWXUGO, align 4
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %93, %95
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @NOISY, align 4
  %101 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %100, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %165

102:                                              ; preds = %87
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* @GENERIC_WRITE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @FILE_WRITE_RIGHTS, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %107, %102
  %114 = load i32, i32* @S_IWUGO, align 4
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %114, %116
  %118 = load i32*, i32** %7, align 8
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %117
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %107
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @GENERIC_READ, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %132, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %129 = and i32 %127, %128
  %130 = load i32, i32* @FILE_READ_RIGHTS, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %126, %121
  %133 = load i32, i32* @S_IRUGO, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %133, %135
  %137 = load i32*, i32** %7, align 8
  %138 = load i32, i32* %137, align 4
  %139 = or i32 %138, %136
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %132, %126
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* @GENERIC_EXECUTE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @FILE_EXEC_RIGHTS, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145, %140
  %152 = load i32, i32* @S_IXUGO, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %152, %154
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %151, %145
  %160 = load i32, i32* @NOISY, align 4
  %161 = load i32, i32* %9, align 4
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %162, align 4
  %164 = call i32 (i32, i8*, ...) @cifs_dbg(i32 %160, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %161, i32 %163)
  br label %165

165:                                              ; preds = %159, %92, %82, %77
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cifs_dbg(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
